"""Provides access to the corpus.

This module expects to find the corpus in ``../data/``, where it should contain
``json_schema.txt``, ``metadata.csv``, etc.
"""
import typing as t
from datetime import datetime
import csv
from os import path

import attr

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


def _optional(s, converter=None):
    return None if not s else (s if converter is None else converter(s))


def _sha(s: str) -> t.List[bytes]:
    return [bytes.fromhex(sha) for sha in s.split(";")] if s else []


UID = t.NewType("UID", str)
PMCID = t.NewType("PMCID", str)
PubmedID = t.NewType("PubmedID", int)


@attr.s(auto_attribs=True)
class Article:
    cord_uid: UID
    sha: t.List[bytes]
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

    @classmethod
    def from_row(cls, row: t.Dict[str, str]) -> "Article":
        return cls(
            cord_uid=UID(row["cord_uid"]),
            sha=_sha(row["sha"]),
            source_x=row["source_x"],
            title=row["title"],
            doi=_optional(row["doi"]),
            pmcid=_optional(row["pmcid"], converter=PMCID),
            pubmed_id=_optional(row["pubmed_id"], converter=lambda i: PubmedID(int(i))),
            license=row["license"],
            abstract=row["abstract"],
            publish_time=_parse_date(row["publish_time"]),
            authors=_parse_authors(row["authors"]),
            journal=_optional(row["journal"]),
            microsoft_id=_optional(row["Microsoft Academic Paper ID"], converter=int),
            who_covidence=_optional(row["WHO #Covidence"]),
            has_pdf_parse=row["has_pdf_parse"] == "True",
            has_pmc_xml_parse=row["has_pmc_xml_parse"] == "True",
            full_text_file=row["full_text_file"],
            url=row["url"],
        )


@attr.s(auto_attribs=True)
class Corpus:
    data_dir: str = "../data"

    def _read_corpus(self) -> t.Iterator[Article]:
        with open(path.join(self.data_dir, "metadata.csv"), newline="") as f:
            reader = csv.DictReader(f)
            for row in reader:
                yield Article.from_row(row)
