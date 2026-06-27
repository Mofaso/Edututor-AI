@echo off
TITLE EduTutor AI Launcher

echo =========================================
echo       Starting EduTutor AI Platform
echo =========================================
echo.

:: Navigate to the directory where this script is located
cd /d "%~dp0"

echo [1/3] Ensuring Docker containers are running...
:: Start the containers in detached mode (in the background)
docker-compose up -d

echo.
echo [2/3] Warming up the servers...
:: Wait for 5 seconds to give the web apps time to come online
ping 127.0.0.1 -n 5 > nul

echo.
echo [3/3] Opening EduTutor AI in your default web browser!
start http://localhost

echo.
echo EduTutor AI is now running in the background.
echo You can close this window now!
echo.
pause
