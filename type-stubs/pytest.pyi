from typing import Callable, TypeVar, Iterator, Union, Generator, overload

ReturnType = TypeVar("ReturnType")
@overload
def fixture(
    function: Callable[..., Generator[ReturnType, None, None]]
) -> Callable[..., Generator[ReturnType, None, None]]: ...
@overload
def fixture(function: Callable[..., ReturnType]) -> Callable[..., ReturnType]: ...
