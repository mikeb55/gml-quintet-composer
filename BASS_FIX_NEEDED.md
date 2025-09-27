# Known Issue: Bass Part in v3.1

## Problem
The bass (Contrabass/Part 5) outputs rests instead of notes in the MusicXML export.

## Root Cause
The rhythm duration calculation for the bass is incorrect - it tries to write a duration of 1024 but something in the XML generation fails, defaulting to rests.

## Temporary Workaround
After importing to Sibelius:
1. Select all rests in the Contrabass part
2. Copy the Cello part (Part 4)
3. Paste into Contrabass
4. Transpose down one octave (Ctrl+Shift+Down Arrow)

## Files Affected
- GML-Quintet-Pro-v3.1-RHYTHMIC.html (has the bug)
- GML-Quintet-Pro-v3.2-FIXED.html (attempted fix, incomplete)

## What Works
- All other voices (Violin I, II, Viola, Cello) work correctly
- Rhythm patterns work (swing, la pompe, eighths, etc.)
- Harmony generation is correct
- Style profiles function properly
