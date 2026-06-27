@echo off
echo Starting EduTutor AI...

REM ---- BACKEND ----
cd /d E:\EduTutor AI\backend

echo Activating virtual environment...
call venv\Scripts\activate

echo Starting FastAPI backend on port 8001...
start cmd /k python -m uvicorn main:app --reload --port 8001

REM ---- FRONTEND ----
cd /d E:\EduTutor AI\frontend

echo Starting frontend on port 5176...
start cmd /k npm run dev -- --port 5176

REM ---- OPEN BROWSER ----
timeout /t 5 > nul
start http://localhost:5176

echo EduTutor AI started successfully.