"""Utility functions and classes.
"""
import typing as t
from os import path
from enum import Enum, auto

import nltk

T = t.TypeVar("T")
R = t.TypeVar("R")

SRC_DIR = path.realpath(path.dirname(__file__))
REPO_ROOT = path.dirname(SRC_DIR)


def path_from_src(*paths: str) -> str:
    """Construct an absolute path relative to the src directory.

    See os.path.join for more information.
    """
    return path.join(SRC_DIR, *paths)


def path_from_repo(*paths: str) -> str:
    """Construct an absolute path relative to the repository root.

    See os.path.join for more information.
    """
    return path.join(REPO_ROOT, *paths)


@t.overload
def optional(value: t.Optional[T]) -> t.Optional[T]:
    """Overload type definition.
    """
    ...


@t.overload
def optional(
    value: t.Optional[T], converter: t.Optional[t.Callable[[T], R]] = None
) -> t.Optional[R]:
    """Overload type definition.
    """
    ...


def optional(value, converter=None):  # type: ignore
    """Convert a CSV field to a value.

    Returns ``None`` for empty strings.

    >>> optional('')
    >>> optional('', converter=int)
    >>> optional('123')
    '123'
    >>> optional('123', converter=int)
    123
    """
    if value:
        return value if converter is None else converter(value)
    return None


class NLTKData(Enum):
    """Bool-like enum indicating if NLTK data was downloaded.

    Used by `ensure_nltk_data()`.
    """

    AlreadyPresent = auto()
    Downloaded = auto()


def ensure_nltk_data() -> NLTKData:
    """Ensure NLTK data is downloaded.
     """
    try:
        nltk.data.load("tokenizers/punkt/PY3/english.pickle")
        return NLTKData.AlreadyPresent
    except LookupError:
        nltk.download("punkt")
        return NLTKData.Downloaded
