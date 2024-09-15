@if "%~1"=="" goto skip

@setlocal enableextensions
@pushd %~dp0
@echo "%~1\*.*" "..\..\..\*.*" >.P.pak
.\UnrealPak.exe "%~1.pak" -create=P.pak -compress
@popd
@pause

:skip
