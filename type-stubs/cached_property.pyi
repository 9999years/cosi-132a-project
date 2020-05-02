from typing import Callable, TypeVar

ReturnType = TypeVar("ReturnType")

def cached_property(function: Callable[..., ReturnType]) -> ReturnType: ...
