@echo off
title LumaRail - A Smarter Way to Travel
echo ======================================================================
echo    LUMARAIL - A SMARTER WAY TO TRAVEL
echo    Starting Local Production Server and Cloudflare Tunnel...
echo ======================================================================

cd /d "%~dp0"

echo [1/2] Starting local production server on port 4200...
start /b node server.js

echo [2/2] Launching Cloudflare public tunnel...
start ..\cloudflared.exe tunnel --url http://127.0.0.1:4200

echo.
echo Both services are now running!
echo Local Address: http://localhost:4200
echo.
pause
