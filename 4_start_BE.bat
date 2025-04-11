@echo off
setlocal

set "BASEDIR=%~dp0"

echo [cs2_webradar] Checking if "usermode/release/usermode.exe" file exists...

if exist "%BASEDIR%usermode\release\usermode.exe" (
    echo [cs2_webradar] Starting usermode...
    start "" "%BASEDIR%usermode\release\usermode.exe"
) else (
    echo [cs2_webradar] Failed to start usermode.exe!
    echo Make sure you compiled usermode.hpp via VisualStudio!
    pause
)

endlocal
