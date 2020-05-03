"""Classes for PDF-JSON data.
"""
import typing as t

import attr

from .util import optional


class JSONLocation(t.TypedDict, total=False):
    """Schema for JSON-decoded Location.

    Used to transform a JSON dict into a Location instance.
    """

    addrLine: str
    postCode: str
    postBox: str
    settlement: str
    region: str
    country: str


@attr.s(auto_attribs=True)
class Location:
    """An institution/laboratory's location.

    Used in Affiliation, to track author locations.
    """

    # e.g. 'Biotecnología y Salud Pú blica -Facultad de Ciencias'
    addr_line: t.Optional[str]
    # e.g. '200032', '141 86', 'SE22 9DB'
    post_code: t.Optional[str]
    post_box: t.Optional[str]
    # e.g. London, Atlanta, Wuhan
    settlement: t.Optional[str]  # i.e. town
    # e.g. MA, Georgia, SP. Sometimes abbreviated, sometimes not.
    region: t.Optional[str]  # i.e. state
    # Not any standard ISO string. Australia, PR China, UK, Canada are all
    # examples in the corpus.
    country: t.Optional[str]

    @classmethod
    def from_json(cls, data: JSONLocation) -> "Location":
        """Construct a Location instance from a JSON dict.
        """
        return cls(
            addr_line=data.get("addrLine", None),  # Field rename.
            post_code=data.get("postCode", None),  # Field rename.
            post_box=data.get("postBox", None),  # Field rename.
            settlement=data.get("settlement", None),
            region=data.get("region", None),
            country=data.get("country", None),
        )


class JSONAffiliation(t.TypedDict):
    """Schema for JSON-decoded Affiliation.

    Used to transform a JSON dict into an Affiliation instance.
    """

    laboratory: str
    institution: str
    location: JSONLocation


@attr.s(auto_attribs=True)
class Affiliation:
    """An author's affiliation with a given laboratory or institution.
    """

    laboratory: str
    institution: str
    location: t.Optional[Location]

    @classmethod
    def from_json(cls, data: JSONAffiliation) -> "Affiliation":
        """Construct an Affiliation instance from a JSON dict.
        """
        return cls(
            laboratory=data["laboratory"],
            institution=data["institution"],
            location=optional(data["location"], Location.from_json),
        )


class _JSONAuthor(t.TypedDict, total=False):
    """Schema for JSON-decoded Author, non-required fields.

    Used to transform a JSON dict into an Author instance.
    """

    suffix: str
    affiliation: JSONAffiliation
    email: str


class JSONAuthor(_JSONAuthor):
    """Schema for JSON-decoded Author.

    Used to transform a JSON dict into a Author instance.
    """

    first: str
    middle: t.List[str]
    last: str


@attr.s(auto_attribs=True)
class Author:
    """The author of a paper or citation.
    """

    first: str
    middle: t.List[str]  # Often empty.
    last: str
    suffix: t.Optional[str]
    affiliation: t.Optional[Affiliation]
    email: t.Optional[str]

    @classmethod
    def from_json(cls, data: JSONAuthor) -> "Author":
        """Construct an Author instance from a JSON dict.
        """
        return cls(
            first=data["first"],
            middle=data["middle"],
            last=data["last"],
            suffix=optional(data["suffix"]),
            affiliation=optional(
                data.get("affiliation", None), converter=Affiliation.from_json
            ),
            email=data.get("email", None),
        )


class JSONCiteSpan(t.TypedDict):
    """Schema for JSON-decoded CiteSpan.

    Used to transform a JSON dict into a CiteSpan instance.
    """

    start: int
    end: int
    text: str
    ref_id: str


RefID = t.NewType("RefID", str)


@attr.s(auto_attribs=True)
class CiteSpan:
    """A citation span within a paragraph.

    ``start`` and ``end`` are indexes into the paragraph's text; that span of
    text is also preserved as ``text``.

    ``ref_id`` is a paper-unique ID for this reference, corresponding to the
    key of an entry in FullText.metadata.bib_entries.
    """

    start: int
    end: int
    text: str
    ref_id: RefID

    @classmethod
    def from_json(cls, data: JSONCiteSpan) -> "CiteSpan":
        """Construct a CiteSpan instance from a JSON dict.
        """
        return cls(
            start=data["start"],
            end=data["end"],
            text=data["text"],
            ref_id=RefID(data["ref_id"]),
        )


class JSONRefSpan(t.TypedDict):
    """Schema for JSON-decoded RefSpan.

    Used to transform a JSON dict into a RefSpan instance.
    """

    start: int
    end: int
    text: str
    ref_id: str


@attr.s(auto_attribs=True)
class RefSpan:
    """A reference span within a paragraph.

    This includes references to tables, figures, diagrams, plots, etc.

    Attributes similar to ``CiteSpan``, though ``ref_id`` is optional in this
    case.

    ``ref_id`` corresponds to the key of an entry in
    ``FullText.metadata.ref_entries``.
    """

    start: int
    end: int
    text: str
    ref_id: t.Optional[RefID]

    @classmethod
    def from_json(cls, data: JSONRefSpan) -> "RefSpan":
        """Construct a RefSpan instance from a JSON dict.
        """
        return cls(
            start=data["start"],
            end=data["end"],
            text=data["text"],
            ref_id=optional(data["ref_id"], RefID),
        )


class JSONBibEntry(t.TypedDict):
    """Schema for JSON-decoded BibEntry.

    Used to transform a JSON dict into a BibEntry instance.
    """

    ref_id: str
    title: str
    authors: t.List[JSONAuthor]
    year: int
    venue: str
    volume: str
    issn: str
    pages: str
    other_ids: t.Dict[str, str]


@attr.s(auto_attribs=True)
class BibEntry:
    """A citation in a paper's metadata.

    ``ref_id`` is a paper-unique key referred to by the ``CiteSpan`` class.
    """

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
    def from_json(cls, data: JSONBibEntry) -> "BibEntry":
        """Construct a BibEntry instance from a JSON dict.
        """
        print(data["other_ids"])
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


class _JSONRefEntry(t.TypedDict, total=False):
    """Schema for JSON-decoded RefEntry (non-mandatory members).

    Used to transform a JSON dict into a RefEntry instance.
    """

    latex: str


class JSONRefEntry(_JSONRefEntry):
    """Schema for JSON-decoded RefEntry.

    Used to transform a JSON dict into a RefEntry instance.
    """

    text: str
    type: str


@attr.s(auto_attribs=True)
class RefEntry:
    """A reference in a paper's Metadata.
    """

    text: str
    # type
    kind: str
    latex: t.Optional[str]

    @classmethod
    def from_json(cls, data: JSONRefEntry) -> "RefEntry":
        """Construct a RefEntry instance from a JSON dict.
        """
        return cls(
            text=data["text"],
            kind=data["type"],  # Rename field.
            latex=data.get("latex", None),
        )


class _JSONParagraph(t.TypedDict, total=False):
    """Schema for JSON-decoded Paragraph (non-mandatory members).

    Used to transform a JSON dict into a Paragraph instance.
    """

    eq_spans: t.List[JSONCiteSpan]


class JSONParagraph(_JSONParagraph):
    """Schema for JSON-decoded Paragraph.

    Used to transform a JSON dict into a Paragraph instance.
    """

    text: str
    section: str
    cite_spans: t.List[JSONCiteSpan]
    ref_spans: t.List[JSONRefSpan]


@attr.s(auto_attribs=True)
class Paragraph:
    """A paragraph in an article.

    ``section`` is the section this paragraph is in, like ``"Introduction"`` or
    ``"Conclusion"``.
    """

    text: str
    section: str
    cite_spans: t.List[CiteSpan]
    ref_spans: t.List[RefSpan]
    eq_spans: t.List[CiteSpan]

    @classmethod
    def from_json(cls, data: JSONParagraph) -> "Paragraph":
        """Construct a Paragraph instance from a JSON dict.
        """
        return cls(
            text=data["text"],
            section=data["section"],
            cite_spans=[
                CiteSpan.from_json(cite_span) for cite_span in data["cite_spans"]
            ],
            ref_spans=[RefSpan.from_json(ref_span) for ref_span in data["ref_spans"]],
            eq_spans=[
                CiteSpan.from_json(eq_span) for eq_span in data.get("eq_spans", [])
            ],
        )


class JSONMetadata(t.TypedDict):
    """Schema for JSON-decoded Metadata.

    Used to transform a JSON dict into a Metadata instance.
    """

    title: str
    authors: t.List[JSONAuthor]


@attr.s(auto_attribs=True)
class Metadata:
    """An article's metadata.

    See FullText.
    """

    title: str
    authors: t.List[Author]

    @classmethod
    def from_json(cls, data: JSONMetadata) -> "Metadata":
        """Construct a Metadata instance from a JSON dict.
        """
        return cls(
            title=data["title"],
            authors=[Author.from_json(author) for author in data["authors"]],
        )


class JSONFullText(t.TypedDict):
    """Schema for JSON-decoded FullText.

    Used to transform a JSON dict into a FullText instance.
    """

    paper_id: str
    metadata: JSONMetadata
    abstract: t.List[JSONParagraph]
    body_text: t.List[JSONParagraph]
    bib_entries: t.Dict[str, JSONBibEntry]
    ref_entries: t.Dict[str, JSONRefEntry]
    back_matter: t.List[JSONParagraph]


@attr.s(auto_attribs=True)
class FullText:
    """A.n article's full-text.

    See: https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge#json_schema.txt
    """

    # 40-char sha1
    paper_id: str
    metadata: Metadata
    abstract: t.List[Paragraph]
    body_text: t.List[Paragraph]
    bib_entries: t.Dict[RefID, BibEntry]
    ref_entries: t.Dict[RefID, RefEntry]
    back_matter: t.List[Paragraph]

    @classmethod
    def from_json(cls, data: JSONFullText) -> "FullText":
        """Construct a FullText instance from a JSON dict.
        """
        return cls(
            paper_id=data["paper_id"],
            metadata=Metadata.from_json(data["metadata"]),
            abstract=[Paragraph.from_json(paragraph) for paragraph in data["abstract"]],
            body_text=[
                Paragraph.from_json(paragraph) for paragraph in data["body_text"]
            ],
            bib_entries={
                RefID(ref_id): BibEntry.from_json(bib_entry)
                for ref_id, bib_entry in data["bib_entries"].items()
            },
            ref_entries={
                RefID(ref_id): RefEntry.from_json(ref_entry)
                for ref_id, ref_entry in data["ref_entries"].items()
            },
            back_matter=[
                Paragraph.from_json(paragraph) for paragraph in data["back_matter"]
            ],
        )
