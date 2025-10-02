@echo off
echo Committing Quintet Composer v11.4 - Composer Profiles Integration
echo.

echo Adding files...
git add quintet-composer-v11.4.html
git add commit-v11.4.bat

echo.
echo Committing changes...
git commit -m "v11.4: Integrate 13+ composer profiles with authentic characteristics

- Added comprehensive composer profiles (Bach, Mozart, Beethoven, Haydn, Chopin, Brahms, Schubert, Debussy, Ravel, Stravinsky, Bartók, Glass, Reich)
- Profile characteristics: harmony, rhythm, melody, texture, tempo
- Enhanced UI with era-grouped composer selection
- Profile-aware harmonic progressions and melodic patterns
- Composer-specific generation algorithms
- Maintains backward compatibility with existing features

Note: Output currently monotonous - will address in v11.5 with variation engine"

echo.
echo Pushing to GitHub...
git push origin exp/v10.20

echo.
echo v11.4 Composer Profiles Integration committed and pushed successfully!
pause
