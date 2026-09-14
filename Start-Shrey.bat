@echo off
setlocal
cd /d "%~dp0"

title Shrey Assistant

where py >nul 2>&1
if not errorlevel 1 (
    py -3 main.py
) else (
    python main.py
)

if errorlevel 1 (
    echo.
    echo Shrey Assistant stopped with an error.
    pause
)
endlocal
