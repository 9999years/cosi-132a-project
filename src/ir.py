"""Information retrieval aspects of the project.
"""
from __future__ import annotations
import typing as t
from os import path
import subprocess
from subprocess import Popen
import json
import uuid

import nltk
from nltk.tag import StanfordNERTagger, StanfordTagger
import attr

from . import util
from .irtypes import Token, LocationName


def words(text: str) -> t.List[Token]:
    """Tokenize ``text`` to words.
    """
    util.ensure_nltk_data()
    return t.cast(t.List[Token], nltk.tokenize.word_tokenize(text))


class JSONClassifiedToken(t.TypedDict):
    start: int
    end: int
    classification: str
    text: str
    confidence: float


@attr.s(auto_attribs=True)
class ClassifiedToken:
    start: int
    end: int
    classification: str
    text: str
    confidence: float

    @classmethod
    def from_json(cls, data: JSONClassifiedToken) -> ClassifiedToken:
        return cls(**data)


@attr.s(auto_attribs=True)
class LocationTagger:
    # Classifier filename
    classifier: str
    # Args to the server
    server_executable: t.List[str]
    _proc: Popen = t.cast(Popen, None)

    def _check_server(self):
        if self._proc.poll() is not None:
            raise ValueError(
                "Server died:\n" + self._proc.communicate()[1].decode("utf-8")
            )

    def _message(self, message: t.Dict[str, t.Any]) -> t.Dict[str, t.Any]:
        self._check_server()
        uuid_ = str(uuid.uuid1())
        message["uuid"] = uuid_
        serialized = json.dumps(message)
        self._proc.stdin.write(serialized.encode("utf-8"))
        self._proc.stdin.write(b"\n")
        self._proc.stdin.flush()

        raw_resp = self._proc.stdout.readline()
        resp = json.loads(raw_resp)
        if resp["action"] != message["action"] or resp["uuid"] != uuid_:
            raise ValueError(f"Bad server response: {resp}")
        return resp

    def __attrs_post_init__(self) -> None:
        self._proc = Popen(
            self.server_executable,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )

        self._message(
            {"action": "set-classifier", "classifier": self.classifier,}
        )

    def classify(self, text: str) -> t.List[ClassifiedToken]:
        resp = self._message({"action": "classify", "text": text,})
        ret = []
        for data in resp["tokens"]:
            tok = ClassifiedToken.from_json(data)
            if tok.classification is not None:
                ret.append(tok)
        return ret


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

