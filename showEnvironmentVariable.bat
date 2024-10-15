@echo off
setlocal enabledelayedexpansion

echo Environment Variables:
echo.

set "counter=1"

for /f "tokens=1,2* delims==" %%a in ('set') do (
    echo !counter!: %%a=%%b
    set /a "counter+=1"
)

echo.
echo Total environment variables: !counter!

endlocal
