"""Information retrieval aspects of the project.
"""
from __future__ import annotations
import typing as t
from os import path

import nltk
from nltk.tag import StanfordNERTagger, StanfordTagger

from . import util
from .irtypes import Token, LocationName


def words(text: str) -> t.List[Token]:
    """Tokenize ``text`` to words.
    """
    util.ensure_nltk_data()
    return t.cast(t.List[Token], nltk.tokenize.word_tokenize(text))


_LOCATION_FALSE_POSITIVES = [
    "Meulenberg",
    "RCNMV",
    "Ou",
    "E.coli",
]


def locations(toks: t.List[Token], tagger: StanfordTagger) -> t.List[LocationName]:
    """Extract locations from a list of tokens.

    Uses Stanford NER 3-class model.
    """
    return [
        LocationName(loc)
        for loc, tok_type in tagger.tag(toks)
        if tok_type == "LOCATION" and loc not in _LOCATION_FALSE_POSITIVES
    ]

