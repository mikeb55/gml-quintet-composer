@echo off
echo ========================================
echo SAFE COMMIT SCRIPT FOR V61
echo ========================================
echo.

REM Set the correct directory
set TARGET_DIR=C:\Users\mike\Documents\gml-workspace\quintet-composer
echo Changing to directory: %TARGET_DIR%
cd /d %TARGET_DIR%

REM Verify we're in the right place
echo.
echo Current directory is:
cd
echo.

REM Check if git repo exists
if not exist .git (
    echo ERROR: This is not a git repository!
    echo Please make sure you're in the right directory.
    pause
    exit /b 1
)

REM Show current git status
echo Current git status:
echo ----------------------------------------
git status --short
echo ----------------------------------------
echo.

REM Check current branch
echo Current branch:
git branch --show-current
echo.

REM Make sure we're on harmony-improvements branch
git checkout harmony-improvements 2>nul
if %errorlevel% neq 0 (
    echo WARNING: Could not switch to harmony-improvements branch
    echo You may need to commit or stash current changes first
)

REM Add the specific file
echo Adding v61 file to git...
git add quintet_composer_v61_OCTAVE_FIX.html

REM Show what will be committed
echo.
echo Files to be committed:
echo ----------------------------------------
git status --cached --short
echo ----------------------------------------
echo.

REM Commit with clear message
echo Committing with message...
git commit -m "v61: Fixed guitar octave issue, cello range correct, chords working but inner voices still static"

REM Check if commit succeeded
if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo COMMIT SUCCESSFUL!
    echo ========================================
    echo.
    echo Now pushing to GitHub...
    git push origin harmony-improvements
    
    if %errorlevel% equ 0 (
        echo.
        echo ========================================
        echo PUSH SUCCESSFUL! 
        echo v61 is now safely on GitHub
        echo ========================================
        echo.
        echo Latest commit:
        git log -1 --oneline
    ) else (
        echo.
        echo WARNING: Push failed but commit is safe locally
        echo You can try pushing again later with:
        echo git push origin harmony-improvements
    )
) else (
    echo.
    echo ERROR: Commit failed
    echo Please check the error message above
)

echo.
echo Press any key to close...
pause >nul