@echo off
setlocal
cd /d "%~dp0"
title FraudGuard - AI Transaction Monitoring
color 0B
echo.
echo =====================================================
echo        FRAUDGUARD - AI FRAUD MONITORING SYSTEM
echo =====================================================
echo.
python -c "import flask, flask_cors, matplotlib" >nul 2>&1
if errorlevel 1 (
  echo Installing required Python packages...
  python -m pip install -r requirements.txt
  if errorlevel 1 (
    echo.
    echo Could not install the required packages. Please check Python and Internet connection.
    pause
    exit /b 1
  )
)
echo Starting server at http://127.0.0.1:5001
start "" http://127.0.0.1:5001
python app.py
if errorlevel 1 py app.py
pause
