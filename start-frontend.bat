@echo off
echo ========================================
echo   MNL Exports - Starting Frontend
echo ========================================
echo.
echo This will start the React development server.
echo The website will open at http://localhost:3000
echo.
echo Press Ctrl+C to stop the server.
echo.

cd frontend

if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
    echo.
)

echo Starting React development server...
echo.
npm start

pause

