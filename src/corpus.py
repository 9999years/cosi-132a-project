"""Provides access to the corpus.

This module expects to find the corpus in ``../data/``, where it should contain
``json_schema.txt``, ``metadata.csv``, etc.
"""
import csv
import typing as t
from datetime import datetime
import os
from os import path
import json
import enum

import attr
from cached_property import cached_property

from .pdf_json import FullText, JSONFullText
from .util import optional

_DATETIME_2020 = datetime(2020, 1, 1)


def _parse_date(date: str) -> t.Optional[datetime]:
    """Parse a value in the corpus publish_time column.

    >>> _parse_date('2020')
    datetime.datetime(2020, 1, 1, 0, 0)
    >>> _parse_date('2003-04-28')
    datetime.datetime(2003, 4, 28, 0, 0)
    """
    if not date:
        return None
    if date == "2020":
        return _DATETIME_2020
    try:
        return datetime.fromisoformat(date)
    except ValueError:
        return datetime.strptime(date, "%Y")


def _parse_authors(authors: t.Optional[str]) -> t.List[str]:
    return (
        [author.strip() for author in authors.split(";")] if authors is not None else []
    )


def _sha(sha: str) -> t.List[str]:
    return sha.split(";") if sha else []


def _maybe_load_article(filename: str) -> t.Optional[FullText]:
    if path.exists(filename):
        with open(filename) as f:
            return FullText.from_json(t.cast(JSONFullText, json.load(f)))
    return None


class _FullTextKind(enum.Enum):
    PDF = enum.auto()
    PMC = enum.auto()

    @property
    def dir_name(self) -> str:
        """Directory name for this variant.
        """
        return {_FullTextKind.PDF: "pdf_json", _FullTextKind.PMC: "pmc_json",}[self]

    @property
    def full_text_file_values(self) -> t.List[str]:
        """Values of Article.full_text_file that have data of this type.
        """
        return {
            _FullTextKind.PDF: [
                "biorxiv_medrxiv",
                "comm_use_subset",
                "custom_license",
                "noncomm_use_subset",
            ],
            _FullTextKind.PMC: [
                "comm_use_subset",
                "custom_license",
                "noncomm_use_subset",
            ],
        }[self]


UID = t.NewType("UID", str)
PMCID = t.NewType("PMCID", str)
PubmedID = t.NewType("PubmedID", int)

ArticleCSV = t.TypedDict(  # pylint: disable=invalid-name
    "ArticleCSV",
    {
        "cord_uid": str,
        "sha": str,
        "source_x": str,
        "title": str,
        "doi": str,
        "pmcid": str,
        "pubmed_id": str,
        "license": str,
        "abstract": str,
        "publish_time": str,
        "authors": str,
        "journal": str,
        "Microsoft Academic Paper ID": str,
        "WHO #Covidence": str,
        "has_pdf_parse": str,
        "has_pmc_xml_parse": str,
        "full_text_file": str,
        "url": str,
    },
)


@attr.s(auto_attribs=True)
class Article:
    """Article metadata from the corpus.

    Parsed from one row of the ``data/metadata.csv`` file.
    """

    cord_uid: UID
    sha: t.List[str]
    source_x: str
    title: str
    doi: t.Optional[str]
    pmcid: t.Optional[PMCID]
    pubmed_id: t.Optional[PubmedID]
    license: str
    abstract: str
    publish_time: t.Optional[datetime]
    authors: t.List[str]
    journal: t.Optional[str]
    # Microsoft Academic Paper ID
    microsoft_id: t.Optional[int]
    # WHO #Covidence
    who_covidence: t.Optional[str]
    has_pdf_parse: bool
    has_pmc_xml_parse: bool
    full_text_file: str
    url: str

    _corpus: t.Optional["Corpus"] = None

    def _json_preconditions(self, kind: _FullTextKind) -> None:
        if self._corpus is None:
            raise ValueError(
                "Article must be initialized with a non-None Corpus to access"
                + kind.dir_name
                + "data."
            )

        if self.full_text_file not in kind.full_text_file_values:
            raise ValueError(
                "Article must be in one of"
                + ", ".join(kind.full_text_file_values)
                + f"datasets to access {kind.dir_name} data, not {self.full_text_file}"
            )

    def _json_path(self, kind: _FullTextKind, sha: t.Optional[str] = None) -> str:
        return path.join(
            t.cast("Corpus", self._corpus).data_dir,
            self.full_text_file,
            self.full_text_file,
            kind.dir_name,
            f"{sha}.json" if kind == _FullTextKind.PDF else f"{self.pmcid}.xml.json",
        )

    def pdf_json(self) -> t.Iterator[FullText]:
        """Iterate over full-text PDF parses for this article.

        Some articles have their full-text parsed from a PDF into a JSON format
        *loosely* described by ``data/json_schema.txt``. This function
        iterates over available articles, providing ``FullText`` instances.
        """
        self._json_preconditions(_FullTextKind.PDF)
        for sha in self.sha:
            fulltext = _maybe_load_article(
                self._json_path(kind=_FullTextKind.PDF, sha=sha)
            )
            if fulltext is not None:
                yield fulltext

    def pmc_json(self) -> t.Iterator[FullText]:
        """Iterate over full-text PDF parses for this article from PMC data.

        Similar to the ``pdf_json`` method, but for ``pmc_json`` data.
        """
        self._json_preconditions(_FullTextKind.PMC)
        fulltext = _maybe_load_article(self._json_path(kind=_FullTextKind.PMC))
        if fulltext is not None:
            yield fulltext

    @classmethod
    def from_row(
        cls, row: ArticleCSV, corpus: t.Optional["Corpus"] = None
    ) -> "Article":
        """Construct an Article from a CSV row produced by a ``csv.DictReader``.
        """
        return cls(
            cord_uid=UID(row["cord_uid"]),
            sha=_sha(row["sha"]),
            doi=optional(row["doi"]),
            pmcid=optional(row["pmcid"], converter=PMCID),
            pubmed_id=optional(row["pubmed_id"], converter=lambda i: PubmedID(int(i))),
            publish_time=_parse_date(row["publish_time"]),
            authors=_parse_authors(row["authors"]),
            journal=optional(row["journal"]),
            microsoft_id=optional(row["Microsoft Academic Paper ID"], converter=int),
            who_covidence=optional(row["WHO #Covidence"]),
            has_pdf_parse=row["has_pdf_parse"] == "True",
            has_pmc_xml_parse=row["has_pmc_xml_parse"] == "True",
            full_text_file=row["full_text_file"],
            url=row["url"],
            source_x=row["source_x"],
            title=row["title"],
            license=row["license"],
            abstract=row["abstract"],
            corpus=corpus,
        )


_REQUIRED_DATA_DIR_FILES = {
    "custom_license",
    "comm_use_subset",
    "biorxiv_medrxiv",
    "metadata.csv",
    "cord_19_embeddings_4_17",
    "noncomm_use_subset",
}


def _validate_data_dir(
    instance: "Corpus", attribute: attr.Attribute[str], data_dir: str
) -> None:
    """Ensure that a given ``data_dir`` likely contains an unzipped CORD-19 corpus.

    Note that this just checks for top-level files and folders, and doesn't
    confirm the entire directory tree or the data in any of the files.
    """
    if missing_files := _REQUIRED_DATA_DIR_FILES - set(os.listdir(data_dir)):
        raise ValueError(
            f"The following files/directories were expected in {data_dir} but not found:"
            + ", ".join(missing_files)
        )


@attr.s(auto_attribs=True)
class Corpus:
    """Provides access to the CORD-19 dataset.

    Given a ``data_dir`` path to a directory containing the unzipped dataset,
    ``Corpus`` provides access to articles, full-text parses, and embeddings
    data.

    See: https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge
    """

    # This directory should look something like:
    #
    # data/
    # ├── biorxiv_medrxiv/
    # │   └── biorxiv_medrxiv/
    # │       └── pdf_json/
    # ├── comm_use_subset/
    # │   └── comm_use_subset/
    # │       ├── pdf_json/
    # │       └── pmc_json/
    # ├── cord_19_embeddings_4_17/
    # │   └── cord_19_embeddings_4_17.csv
    # ├── COVID.DATA.LIC.AGMT.pdf
    # ├── custom_license/
    # │   └── custom_license/
    # │       ├── pdf_json/
    # │       └── pmc_json/
    # ├── json_schema.txt
    # ├── metadata.csv
    # ├── metadata.readme
    # └── noncomm_use_subset/
    #     └── noncomm_use_subset/
    #         ├── pdf_json/
    #         └── pmc_json/
    data_dir: str = attr.ib(default="./data", validator=_validate_data_dir)

    def _read_articles(self) -> t.Iterator[Article]:
        with open(path.join(self.data_dir, "metadata.csv"), newline="") as f:
            reader = csv.DictReader(f)
            for row in reader:
                yield Article.from_row(t.cast(ArticleCSV, row), corpus=self)

    @cached_property
    def articles(self) -> t.List[Article]:
        """Get a list of article metadata.
        """
        return list(self._read_articles())

    def _read_embeddings(self) -> t.Iterator[t.Tuple[UID, t.List[float]]]:
        with open(
            path.join(
                self.data_dir, "cord_19_embeddings_4_17", "cord_19_embeddings_4_17.csv"
            ),
            newline="",
        ) as f:
            reader = csv.reader(f)
            for row in reader:
                yield UID(row[0]), [float(value) for value in row[1:]]

    def embeddings(self) -> t.Dict[UID, t.List[float]]:
        """Get embedding data from the ``cord_19_embeddings_4_17`` directory.

        Warning: This function will load a ~1GB ``dict`` into memory.
        Use with caution.
        """
        return dict(self._read_embeddings())
