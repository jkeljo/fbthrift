#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import thrift.py3.types
import thrift.py3.client
import typing as _typing
from types import TracebackType

import my.namespacing.extend.test.extend.types as _my_namespacing_extend_test_extend_types
import hsmodule.types as _hsmodule_types
import hsmodule.clients as _hsmodule_clients


_ExtendTestServiceT = _typing.TypeVar('_ExtendTestServiceT', bound='ExtendTestService')


class ExtendTestService(_hsmodule_clients.HsTestService):

    async def __aenter__(self: _ExtendTestServiceT) -> _ExtendTestServiceT: ...
    async def __aexit__(
        self,
        exc_type: _typing.Optional[_typing.Type[BaseException]],
        exc: _typing.Optional[BaseException],
        tb: _typing.Optional[TracebackType],
    ) -> _typing.Optional[bool]: ...

    def set_persistent_header(self, key: str, value: str) -> None: ...

    async def check(
        self,
        struct1: _hsmodule_types.HsFoo
    ) -> bool: ...
