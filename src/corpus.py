"""Provides access to the corpus.

This module expects to find the corpus in ``../data/``, where it should contain
``json_schema.txt``, ``metadata.csv``, etc.
"""
import csv
import typing as t
from datetime import datetime
from os import path
import json

import attr
from cached_property import cached_property

from .pdf_json import FullText

_DATETIME_2020 = datetime(2020, 1, 1)


def _parse_date(d: str) -> t.Optional[datetime]:
    """Parse a value in the corpus publish_time column.

    >>> _parse_date('2020')
    datetime.datetime(2020, 1, 1, 0, 0)
    >>> _parse_date('2003-04-28')
    datetime.datetime(2003, 4, 28, 0, 0)
    """
    if not d:
        return None
    if d == "2020":
        return _DATETIME_2020
    try:
        return datetime.fromisoformat(d)
    except ValueError:
        return datetime.strptime(d, "%Y")


def _parse_authors(authors: t.Optional[str]) -> t.List[str]:
    return (
        [author.strip() for author in authors.split(";")] if authors is not None else []
    )


T = t.TypeVar("T")


@t.overload
def _optional(s: str) -> t.Optional[str]:
    ...


@t.overload
def _optional(
    s: str, converter: t.Optional[t.Callable[[str], T]] = None
) -> t.Optional[T]:
    ...


def _optional(s, converter=None):  # type: ignore
    """Convert a CSV field to a value.

    Returns ``None`` for empty strings.

    >>> _optional('')
    >>> _optional('', converter=int)
    >>> _optional('123')
    '123'
    >>> _optional('123', converter=int)
    123
    """
    return None if not s else (s if converter is None else converter(s))


def _sha(s: str) -> t.List[str]:
    return s.split(";") if s else []


UID = t.NewType("UID", str)
PMCID = t.NewType("PMCID", str)
PubmedID = t.NewType("PubmedID", int)


@attr.s(auto_attribs=True)
class Article:
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

    def pdf_json(self) -> t.Iterator[FullText]:
        if self._corpus is None:
            raise ValueError(
                "Article must be initialized with a non-None Corpus to access pdf_json data."
            )
        if self.full_text_file not in [
            "biorxiv_medrxiv",
            "comm_use_subset",
            "custom_license",
            "noncomm_use_subset",
        ]:
            if self.has_pdf_parse:
                print(
                    "Model failure: has_pdf_parse=True but not in expected dataset!!!!"
                )
                raise ValueError

            raise ValueError(
                f"Article must be in biorxiv_medrxiv, comm_use_subset, noncomm_use_subset, or custom_license datasets to access pdf_json data, not {self.full_text_file}"
            )

        for sha in self.sha:
            json_pdf_fname = path.join(
                self._corpus.data_dir,
                self.full_text_file,
                self.full_text_file,
                "pdf_json",
                f"{sha}.json",
            )

            if path.exists(json_pdf_fname):
                with open(json_pdf_fname) as f:
                    yield FullText.from_json(json.load(f))

    def pmc_json(self) -> t.Iterator[FullText]:
        if self._corpus is None:
            raise ValueError(
                "Article must be initialized with a non-None Corpus to access pmc_json data."
            )

        if self.full_text_file not in [
            "comm_use_subset",
            "custom_license",
            "noncomm_use_subset",
        ]:
            if self.has_pmc_xml_parse:
                print(
                    "Model failure: has_pmc_xml_parse=True but not in expected dataset!!!!"
                )
                raise ValueError

            raise ValueError(
                f"Article must be in comm_use_subset, noncomm_use_subset, or custom_license datasets to access pdf_json data, not {self.full_text_file}"
            )

        json_pmc_fname = path.join(
            self._corpus.data_dir,
            self.full_text_file,
            self.full_text_file,
            "pmc_json",
            f"{self.pmcid}.xml.json",
        )

        if path.exists(json_pmc_fname):
            with open(json_pmc_fname) as f:
                yield FullText.from_json(json.load(f))

    @classmethod
    def from_row(
        cls, row: t.Dict[str, str], corpus: t.Optional["Corpus"] = None
    ) -> "Article":
        return cls(
            cord_uid=UID(row["cord_uid"]),
            sha=_sha(row["sha"]),
            doi=_optional(row["doi"]),
            pmcid=_optional(row["pmcid"], converter=PMCID),
            pubmed_id=_optional(row["pubmed_id"], converter=lambda i: PubmedID(int(i))),
            publish_time=_parse_date(row["publish_time"]),
            authors=_parse_authors(row["authors"]),
            journal=_optional(row["journal"]),
            microsoft_id=_optional(row["Microsoft Academic Paper ID"], converter=int),
            who_covidence=_optional(row["WHO #Covidence"]),
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


@attr.s(auto_attribs=True)
class Corpus:
    data_dir: str = "./data"

    def _read_articles(self) -> t.Iterator[Article]:
        with open(path.join(self.data_dir, "metadata.csv"), newline="") as f:
            reader = csv.DictReader(f)
            for row in reader:
                yield Article.from_row(row, corpus=self)

    @cached_property
    def articles(self) -> t.List[Article]:
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
        return {uid: vector for uid, vector in self._read_embeddings()}
