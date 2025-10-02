@echo off
echo Committing Quintet Composer v11.3 - Cello Octave Fix
echo.

echo Adding files...
git add quintet-composer-v11.3.html
git add commit-v11.3.bat

echo.
echo Committing changes...
git commit -m "v11.3: Fix cello octave - two octaves lower for proper bass register

- Added octaveOffset parameter to parseNote function
- Cello (partIndex 4) now plays two octaves lower
- Better orchestral balance between bass and treble voices
- Maintains backward compatibility with other instruments
- Professional quintet voicing achieved"

echo.
echo Pushing to GitHub...
git push origin exp/v10.20

echo.
echo v11.3 Cello Octave Fix committed and pushed successfully!
pause
