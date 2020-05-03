"""Type definitions for information retrieval.

Narrowing down our types lets us be a bit more declarative about what kind of
data we're dealing with, and lets us answer questions about what a particular
string/number *represents*.
"""
import typing as t

# Can't (yet!) be recursive.
# https://github.com/python/typing/issues/182
JSONValue = t.Union[None, bool, int, float, str, t.List[t.Any], t.Dict[str, t.Any]]
JSON = t.Dict[str, t.Any]
