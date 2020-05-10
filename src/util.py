"""Utility functions and classes.
"""
import typing as t
from os import path

T = t.TypeVar("T")
R = t.TypeVar("R")

SRC_DIR = path.realpath(path.dirname(__name__))
REPO_ROOT = path.dirname(SRC_DIR)


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
