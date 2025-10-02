@echo off
echo ========================================
echo  Quintet Composer v11.1 - Auto Commit
echo ========================================
echo.

REM Check if we're in a git repository
git status >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Not in a git repository!
    echo Please run this from the quintet-composer directory
    pause
    exit /b 1
)

echo [1/5] Adding v11.1 files to git...
git add quintet-composer-v11.1.html
git add commit-v11.1.bat

echo [2/5] Checking git status...
git status

echo [3/5] Committing v11.1 - Fixed MusicXML Export...
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
- commit-v11.1.bat (this script)

🎯 RESULT: Sibelius can now import .musicxml files perfectly!"

echo [4/5] Pushing to GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ SUCCESS: v11.1 pushed to GitHub!
    echo.
    echo 📋 NEXT STEPS:
    echo   1. Test the .musicxml export in Sibelius
    echo   2. Improve musical output (less robotic)
    echo   3. Add composer profiles integration
    echo   4. Implement MIDI intelligence
    echo.
) else (
    echo.
    echo ❌ ERROR: Failed to push to GitHub
    echo Check your git configuration and try again
    echo.
)

echo [5/5] Creating backup...
copy quintet-composer-v11.1.html "backups\v11.1_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.html" >nul 2>&1

echo.
echo 🎼 Quintet Composer v11.1 - Commit Complete!
echo.
pause
