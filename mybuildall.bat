@REM @echo off
pushd %~dp0lexilla\src
nmake /F lexilla.mak 1>%~dp0lexilla.build.log 2>%~dp0lexilla.err.log 
@popd

pushd %~dp0scintilla\win32
nmake /F scintilla.mak 1>%~dp0scintilla.build.log 2>%~dp0scintilla.err.log
@popd

pushd %~dp0scite\win32
nmake /F scite.mak 1>%~dp0scite.build.log 2>%~dp0scite.err.log
@popd


@where /r %~dp0 *.exe
