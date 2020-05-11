"""Provides access to the corpus.

This module expects to find the corpus in ``../data/``, where it should contain
``json_schema.txt``, ``metadata.csv``, etc.
"""
from __future__ import annotations
import csv
import typing as t
from datetime import datetime
import os
from os import path
import json
import enum
from itertools import chain

import attr
from cached_property import cached_property
from nltk.tag import StanfordNERTagger, StanfordTagger

from .pdf_json import FullText, JSONFullText
from .util import optional, path_from_repo

_DATETIME_2020 = datetime(2020, 1, 1)


def _parse_bool(value: str) -> bool:
    """
    >>> _parse_bool("True")
    True
    >>> _parse_bool("False")
    False
    >>> _parse_bool("")
    Traceback (most recent call last):
        ...
    KeyError: ''
    """
    return {"True": True, "False": False}[value]


def _parse_date(date: str) -> t.Optional[datetime]:
    """Parse a value in the corpus publish_time column.

    >>> _parse_date("2020")
    datetime.datetime(2020, 1, 1, 0, 0)
    >>> _parse_date("2003-04-28")
    datetime.datetime(2003, 4, 28, 0, 0)
    """
    if date == "2020":
        return _DATETIME_2020
    try:
        return datetime.fromisoformat(date)
    except ValueError:
        return datetime.strptime(date, "%Y")


def _parse_authors(authors: str) -> t.List[str]:
    """
    >>> _parse_authors("Pasternak, Alexander O.; van den Born, Erwin; Spaan, Willy J.M.")
    ['Pasternak, Alexander O.', 'van den Born, Erwin', 'Spaan, Willy J.M.']
    >>> _parse_authors("Disotell, Todd R")
    ['Disotell, Todd R']
    """
    return [author.strip() for author in authors.split(";")]


def _sha(shas: str) -> t.List[str]:
    """
    >>> _sha("dab2d95da5307c840eb4a1e00f0186022541d63d")
    ['dab2d95da5307c840eb4a1e00f0186022541d63d']
    >>> _sha("e9c78584c08ba79d735e150eff98297eb57f12dd; "
    ...      "cdb29ec7a9029d22f6fbf7ee04543819591acdc2; "
    ...      "4a228865af2c19adf9386a5b04cca3ceb3c8683d")
    ... # doctest: +NORMALIZE_WHITESPACE
    ['e9c78584c08ba79d735e150eff98297eb57f12dd',
     'cdb29ec7a9029d22f6fbf7ee04543819591acdc2',
     '4a228865af2c19adf9386a5b04cca3ceb3c8683d']
    """
    return [sha.strip() for sha in shas.split(";")]


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
DOI = t.NewType("DOI", str)

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
    doi: t.Optional[DOI]
    pmcid: t.Optional[PMCID]
    pubmed_id: t.Optional[PubmedID]
    license: str
    abstract: str
    publish_time: t.Optional[datetime]
    authors: t.List[str]
    journal: t.Optional[str]
    # Microsoft Academic Paper ID
    microsoft_id: t.Optional[str]
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
    def from_row(cls, row: ArticleCSV, corpus: t.Optional[Corpus] = None) -> Article:
        """Construct an Article from a CSV row produced by a ``csv.DictReader``.
        """
        return cls(
            cord_uid=UID(row["cord_uid"]),
            sha=optional(row["sha"], converter=_sha) or [],
            doi=optional(row["doi"], converter=DOI),
            pmcid=optional(row["pmcid"], converter=PMCID),
            pubmed_id=optional(row["pubmed_id"], converter=lambda i: PubmedID(int(i))),
            publish_time=optional(row["publish_time"], converter=_parse_date),
            authors=optional(row["authors"], converter=_parse_authors) or [],
            journal=optional(row["journal"]),
            microsoft_id=optional(row["Microsoft Academic Paper ID"]),
            who_covidence=optional(row["WHO #Covidence"]),
            has_pdf_parse=_parse_bool(row["has_pdf_parse"]),
            has_pmc_xml_parse=_parse_bool(row["has_pmc_xml_parse"]),
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
    _instance: Corpus, _attribute: attr.Attribute[str], data_dir: str
) -> None:
    """Ensure that a given ``data_dir`` likely contains an unzipped CORD-19 corpus.

    Note that this just checks for top-level files and folders, and doesn't
    confirm the entire directory tree or the data in any of the files.
    """
    if not path.exists(data_dir):
        raise ValueError(
            f"Expected to find a data directory at {data_dir} containing at "
            + f"least the files/directories {_REQUIRED_DATA_DIR_FILES}, "
            + "but the directory doesn't appear to exist."
        )
    if missing_files := _REQUIRED_DATA_DIR_FILES - set(os.listdir(data_dir)):
        raise ValueError(
            "The following files/directories were expected in "
            + path.realpath(data_dir)
            + " but not found: "
            + ", ".join(missing_files)
        )


_REQUIRED_STANFORD_NER_DIR_FILES = {
    "classifiers",
    "stanford-ner.jar",
}


def _validate_stanford_ner_dir(
    _instance: Corpus, _attribute: attr.Attribute[str], stanford_ner_dir: str
) -> None:
    """Ensure that a given path likely contains the unzipped Stanford NER data.

    Note that this just checks for top-level files and folders, and doesn't
    confirm the entire directory tree or the data in any of the files.
    """
    if not path.exists(stanford_ner_dir):
        raise ValueError(
            f"Expected to find a data directory at {stanford_ner_dir} containing at "
            + f"least the files/directories {_REQUIRED_STANFORD_NER_DIR_FILES}, "
            + "but the directory doesn't appear to exist."
        )
    if missing_files := _REQUIRED_STANFORD_NER_DIR_FILES - set(
        os.listdir(stanford_ner_dir)
    ):
        raise ValueError(
            "The following files/directories were expected in "
            + path.realpath(stanford_ner_dir)
            + " but not found: "
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
    data_dir: str = attr.ib(
        default=path_from_repo("data"), validator=_validate_data_dir,
    )

    stanford_ner_dir: str = attr.ib(
        default=path_from_repo("stanford-ner"), validator=_validate_stanford_ner_dir,
    )

    def _data_path(self, *components: str) -> str:
        return path.join(self.data_dir, *components)

    @cached_property
    def _location_tagger(self) -> StanfordTagger:
        return StanfordNERTagger(
            "english.all.3class.distsim.crf.ser.gz",
            path_to_jar=path.join(self.stanford_ner_dir, "stanford-ner.jar"),
        )

    def _read_articles(self) -> t.Iterator[ArticleCSV]:
        with open(self._data_path("metadata.csv"), newline="") as f:
            reader = csv.DictReader(f)
            for row in reader:
                yield t.cast(ArticleCSV, row)

    def articles(self) -> t.Iterator[Article]:
        for article in self._read_articles():
            yield Article.from_row(article, corpus=self)

    @cached_property
    def articles_list(self) -> t.List[Article]:
        """Get a list of article metadata.
        """
        return list(self.articles())

    def article_text(self) -> t.Iterator[t.Tuple[Article, FullText]]:
        """Get the full text for each article.
        """
        for article in self.articles():
            for fulltext in chain(article.pdf_json(), article.pmc_json()):
                yield article, fulltext

    def article_from_uid(self, uid: UID) -> Article:
        """Get the Article with a given cord_uid.

        >>> Corpus().article_from_uid("yy96yeu9")
        ... # doctest: +NORMALIZE_WHITESPACE, +ELLIPSIS
        Article(cord_uid='yy96yeu9',
                sha=['c63c4d58d170136b8d3b5a66424b5ac3f73a92d9'],
                source_x='PMC',
                title='Viral Discovery and Sequence Recovery Using DNA Microarrays',
                doi='10.1371/journal.pbio.0000002',
                pmcid='PMC261870',
                pubmed_id=14624234,
                license='cc-by',
                abstract='Because of the constant ... emerging infectious disease.',
                publish_time=datetime.datetime(2003, 11, 17, 0, 0),
                authors=['Wang, David', ..., 'DeRisi, Joseph L'],
                journal='PLoS Biol',
                microsoft_id=None,
                who_covidence=None,
                has_pdf_parse=True,
                has_pmc_xml_parse=True,
                full_text_file='comm_use_subset',
                url='https://www.ncbi.nlm.nih.gov/pmc/articles/PMC261870/',
                ...)
        """
        for article in self.articles():
            if article.cord_uid == uid:
                return article
        raise KeyError(f"No article with cord_uid {uid} found.")

    @property
    def embeddings(self) -> t.Iterator[t.Tuple[UID, t.List[float]]]:
        """Iterator over embedding data.

        Loads data from the ``cord_19_embeddings_4_17`` directory.

        If a full dict is needed, use the ``embeddings_dict`` method, but note
        that the resulting object will be ~1GB.

        >>> def find_by_uid(uid: UID):
        ...     def ret(item: t.Tuple[UID, t.List[float]]) -> bool:
        ...         return item[0] == uid
        ...     return ret
        >>> uid, vector = next(filter(find_by_uid("yy96yeu9"), Corpus().embeddings))
        >>> uid
        'yy96yeu9'
        >>> vector
        ... # doctest: +NORMALIZE_WHITESPACE, +ELLIPSIS
        [-2.3836090564727783, -4.649903774261475, -1.5138229131698608,
         ...,
         2.5869600772857666, -1.1826152801513672, -0.024099022150039673]
        >>> len(vector)
        768
        """
        with open(
            self._data_path("cord_19_embeddings_4_17", "cord_19_embeddings_4_17.csv"),
            newline="",
        ) as f:
            reader = csv.reader(f)
            for row in reader:
                yield UID(row[0]), [float(value) for value in row[1:]]

    def embeddings_dict(self) -> t.Dict[UID, t.List[float]]:
        """Get embedding data from the ``cord_19_embeddings_4_17`` directory.

        Warning: This function will load a ~1GB ``dict`` into memory.
        Use with caution.
        """
        return dict(self.embeddings)
