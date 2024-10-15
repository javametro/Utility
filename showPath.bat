@echo off
setlocal enabledelayedexpansion

echo Current PATH:
echo.

set "path_copy=%PATH%"
set "counter=1"

:loop
for /f "tokens=1* delims=;" %%a in ("!path_copy!") do (
    echo !counter!: %%a
    set /a "counter+=1"
    set "path_copy=%%b"
)

if defined path_copy goto loop

echo.
echo Total directories in PATH: !counter!
