@echo off

echo [cs2_webradar] Checking if "webapp" folder exists...

if exist "webapp" (
    echo [cs2_webradar] Installing Electron globally...
    npm install electron -g
    if errorlevel 1 echo [ERROR] npm install electron failed! && pause

    echo [cs2_webradar] Installing webapp dependencies...

    cd "webapp"
    
    echo [cs2_webradar] Running npm install...
    npm install
    if errorlevel 1 echo [ERROR] npm install failed! && pause
    echo [cs2_webradar] Running npm audit fix...
    npm audit fix
    if errorlevel 1 echo [ERROR] npm audit fix failed! && pause

    echo [cs2_webradar] Successfully installed dependencies.
    pause
) else (
    echo [cs2_webradar] Failed to find "webapp" directory. Please ensure you followed the instructions carefully.
    pause
)

