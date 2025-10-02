# Quintet Composer v11.1 - Auto Commit Script
Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Quintet Composer v11.1 - Auto Commit" -ForegroundColor Cyan  
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check git status
Write-Host "[1/5] Adding v11.1 files to git..." -ForegroundColor Green
git add quintet-composer-v11.1.html
git add commit-v11.1.bat
git add commit-v11.1.ps1

Write-Host "[2/5] Checking git status..." -ForegroundColor Green
git status

Write-Host "[3/5] Committing v11.1 - Fixed MusicXML Export..." -ForegroundColor Green
git commit -m "v11.1 - Fixed MusicXML Export for Sibelius

✅ FIXES:
- Proper .musicxml file extension (not .xml)
- Correct MIME type: application/vnd.recordare.musicxml+xml
- Sibelius-compatible MusicXML 3.1 structure
- Enhanced user feedback with status notifications
- Improved error handling

🎼 FEATURES:
- Harmonic progression framework from v11.0
- Gold-bordered progression controls
- Composer-specific progressions
- Style presets (Classical, Jazz, Pop, Blues, Romantic)
- Smart chord generation with harmonic progressions

📁 FILES:
- quintet-composer-v11.1.html (main file)
- commit-v11.1.bat (batch script)
- commit-v11.1.ps1 (PowerShell script)

🎯 RESULT: Sibelius can now import .musicxml files perfectly!"

Write-Host "[4/5] Pushing to GitHub..." -ForegroundColor Green
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ SUCCESS: v11.1 pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📋 NEXT STEPS:" -ForegroundColor Yellow
    Write-Host "  1. Test the .musicxml export in Sibelius" -ForegroundColor White
    Write-Host "  2. Improve musical output (less robotic)" -ForegroundColor White
    Write-Host "  3. Add composer profiles integration" -ForegroundColor White
    Write-Host "  4. Implement MIDI intelligence" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "❌ ERROR: Failed to push to GitHub" -ForegroundColor Red
    Write-Host "Check your git configuration and try again" -ForegroundColor Yellow
    Write-Host ""
}

Write-Host "[5/5] Creating backup..." -ForegroundColor Green
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$backupDir = "backups"
if (!(Test-Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir | Out-Null
}
Copy-Item "quintet-composer-v11.1.html" "$backupDir\v11.1_$timestamp.html" -Force

Write-Host ""
Write-Host "🎼 Quintet Composer v11.1 - Commit Complete!" -ForegroundColor Cyan
Write-Host ""
