@echo off
REM Start the backend server
start "" cmd /k "cd /d %~dp0 && node dist\app.js"

REM Wait a moment to ensure backend starts
timeout /t 2 >nul

REM Start the Electron app
cd /d %~dp0\frontend-app
npx electron .
