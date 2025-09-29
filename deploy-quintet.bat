@echo off
echo ========================================
echo Quintet V3.0 Deployment Script
echo Repository: mikeb55/gml-quintet-composer
echo ========================================
echo.

cd /d "C:\Users\mike\Documents\gml-workspace\quintet-composer"

echo Current directory: %CD%
echo.

echo Checking git status...
git status
echo.

echo Setting up remote repository...
git remote -v
echo.

REM Remove old remote if it exists
git remote remove origin 2>nul

REM Add correct remote
echo Adding correct remote: https://github.com/mikeb55/gml-quintet-composer.git
git remote add origin https://github.com/mikeb55/gml-quintet-composer.git
echo.

echo Checking current branch...
git branch
echo.

echo Switching to main branch...
git checkout main 2>nul
if errorlevel 1 (
    echo Main branch doesn't exist, creating it...
    git checkout -b main
)
echo.

echo Merging harmony-improvements into main...
git merge harmony-improvements -m "Merge harmony-improvements: Quintet V3.0 with proper rhythms"
echo.

echo Adding quintet-v3.html...
git add quintet-v3.html
git commit -m "Quintet V3.0 - Guitar + String Quartet with proper musical rhythms" 2>nul
if errorlevel 1 (
    echo File already committed, proceeding...
)
echo.

echo Pushing to GitHub...
git push -u origin main
echo.

echo ========================================
echo DEPLOYMENT COMPLETE!
echo Repository: https://github.com/mikeb55/gml-quintet-composer
echo Branch: main
echo File: quintet-v3.html
echo ========================================
echo.

pause