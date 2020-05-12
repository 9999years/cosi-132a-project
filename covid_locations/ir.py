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
    text: str
    confidence: float
    match: str
    locationName: str
    country: str
    latitude: float
    longitude: float


@attr.s(auto_attribs=True)
class ResolvedLocation:
    start: int
    end: int
    text: str
    confidence: float
    match: str
    locationName: str
    country: str
    latitude: float
    longitude: float

    @classmethod
    def from_json(cls, data: JSONClassifiedToken) -> ResolvedLocation:
        return cls(**data)


@attr.s(auto_attribs=True)
class LocationTagger:
    # Classifier filename
    index: str
    # Args to the server
    server_executable: t.List[str]
    _proc: Popen = t.cast(Popen, None)

    def _check_server(self) -> None:
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
        self._proc.stdin.write(b"\n\n")
        self._proc.stdin.flush()

        skipping_blanks = True
        lines = []
        while True:
            line = self._proc.stdout.readline().decode("utf-8").strip()
            if skipping_blanks:
                if line:
                    skipping_blanks = False
            elif not line:
                break
            lines.append(line)
        raw_resp = "\n".join(lines)

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
            {"action": "set-index", "index": self.index,}
        )

    def classify(self, text: str) -> t.List[ResolvedLocation]:
        resp = self._message({"action": "classify", "text": text,})
        return [ResolvedLocation.from_json(data) for data in resp["locations"]]

    def close(self):
        self._proc.kill()


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

