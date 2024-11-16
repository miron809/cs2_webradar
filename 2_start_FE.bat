@echo off

echo [cs2_webradar] Checking if "webapp" folder exists...

if exist "webapp" (
    cd webapp
    echo [cs2_webradar] Starting webapp...
    start npm run dev
) else (
    echo [cs2_webradar] failed to start webapp! 
    echo Make sure you followed the instructions carefully
    pause
)
