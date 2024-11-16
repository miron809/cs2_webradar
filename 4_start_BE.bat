@echo off

echo [cs2_webradar] Checking if "usermode/release/usermode.exe" file exists...

if exist "usermode/release/usermode.exe" (
    cd usermode/release
    echo [cs2_webradar] Starting usermode...
    start usermode/release/usermode.exe
) else (
    echo [cs2_webradar] failed to start usermode.exe! 
    echo Make sure you compiled usermode.hpp via VisualStudio!
    pause
)
