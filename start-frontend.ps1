Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  MNL Exports - Starting Frontend" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "This will start the React development server." -ForegroundColor Yellow
Write-Host "The website will open at http://localhost:3000" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press Ctrl+C to stop the server." -ForegroundColor Yellow
Write-Host ""

Set-Location -Path "frontend"

if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Green
    npm install
    Write-Host ""
}

Write-Host "Starting React development server..." -ForegroundColor Green
Write-Host ""
npm start

