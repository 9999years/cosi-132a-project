"""Classes for PDF-JSON data.
"""
import typing as t

import attr

from .irtypes import JSON


@attr.s(auto_attribs=True)
class Author:
    first: str
    middle: t.List[str]  # Often empty.
    last: str
    suffix: str  # Often empty.
    affiliation: t.Dict[str, str]
    email: t.Optional[str]

    @classmethod
    def from_json(cls, data: JSON) -> "Author":
        return cls(
            first=data["first"],
            middle=data["middle"],
            last=data["last"],
            suffix=data["suffix"],
            affiliation=data.get("affiliation", {}),
            email=data.get("email", None),
        )


RefID = t.NewType("RefID", str)


@attr.s(auto_attribs=True)
class CiteSpan:
    start: int
    end: int
    text: str
    ref_id: RefID

    @classmethod
    def from_json(cls, data: JSON) -> "CiteSpan":
        return cls(
            start=data["start"],
            end=data["end"],
            text=data["text"],
            ref_id=RefID(data["ref_id"]),
        )


@attr.s(auto_attribs=True)
class RefSpan:
    start: int
    end: int
    text: str
    ref_id: t.Optional[RefID]

    @classmethod
    def from_json(cls, data: JSON) -> "RefSpan":
        return cls(
            start=data["start"],
            end=data["end"],
            text=data["text"],
            ref_id=RefID(data["ref_id"]),
        )


@attr.s(auto_attribs=True)
class Paragraph:
    text: str
    section: str
    cite_spans: t.List[CiteSpan]
    ref_spans: t.List[RefSpan]
    eq_spans: t.List[CiteSpan] = []

    @classmethod
    def from_json(cls, data: JSON) -> "Paragraph":
        return cls(
            text=data["text"],
            section=data["section"],
            cite_spans=[
                CiteSpan.from_json(cite_span) for cite_span in data["cite_spans"]
            ],
            ref_spans=[RefSpan.from_json(ref_span) for ref_span in data["ref_spans"]],
            eq_spans=[CiteSpan.from_json(eq_span) for eq_span in data["eq_spans"]]
            if "eq_spans" in data
            else [],
        )


@attr.s(auto_attribs=True)
class BibEntry:
    ref_id: RefID
    title: str
    authors: t.List[Author]
    year: int
    venue: str
    volume: str
    issn: str
    pages: str
    other_ids: t.Dict[str, str]

    @classmethod
    def from_json(cls, data: JSON) -> "BibEntry":
        return cls(
            ref_id=RefID(data["ref_id"]),
            title=data["title"],
            authors=[Author.from_json(author) for author in data["authors"]],
            year=data["year"],
            venue=data["venue"],
            volume=data["volume"],
            issn=data["issn"],
            pages=data["pages"],
            other_ids=data["other_ids"],
        )


@attr.s(auto_attribs=True)
class RefEntry:
    text: str
    # type
    kind: str

    @classmethod
    def from_json(cls, data: JSON) -> "RefEntry":
        return cls(text=data["text"], kind=data["type"],)  # Rename 'type' field


@attr.s(auto_attribs=True)
class Metadata:
    title: str
    authors: t.List[Author]
    abstract: t.List[Paragraph]
    body_text: t.List[Paragraph]
    bib_entries: t.Dict[RefID, BibEntry]
    ref_entries: t.Dict[RefID, RefEntry]
    back_matter: t.List[Paragraph]

    @classmethod
    def from_json(cls, data: JSON) -> "Metadata":
        return cls(
            title=t.cast(str, data["title"]),
            authors=[Author.from_json(author) for author in data["authors"]],
            abstract=[
                Paragraph.from_json(paragraph) for paragraph in data.get("abstract", [])
            ],
            body_text=[
                Paragraph.from_json(paragraph)
                for paragraph in data.get("body_text", [])
            ],
            bib_entries={
                RefID(ref_id): BibEntry.from_json(bib_entry)
                for ref_id, bib_entry in data.get("bib_entries", {}).items()
            },
            ref_entries={
                RefID(ref_id): RefEntry.from_json(ref_entry)
                for ref_id, ref_entry in data.get("ref_entries", {}).items()
            },
            back_matter=[
                Paragraph.from_json(paragraph)
                for paragraph in data.get("back_matter", [])
            ],
        )


@attr.s(auto_attribs=True)
class FullText:
    # 40-char sha1
    paper_id: str
    metadata: Metadata

    @classmethod
    def from_json(cls, data: JSON) -> "FullText":
        return cls(
            paper_id=data["paper_id"], metadata=Metadata.from_json(data["metadata"]),
        )
