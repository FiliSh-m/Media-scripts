@echo off
setlocal enabledelayedexpansion

rem ============================================================
rem  OffsetTime - shifts EXIF timestamps one hour later
rem
rem  Place this .bat in the folder with your images and run it.
rem  Shifts CreateDate, DateTimeOriginal and ModifyDate by +1h
rem  for every image directly in this folder (subfolders ignored).
rem  Requires exiftool in PATH: https://exiftool.org
rem ============================================================

set "EXTS=*.jpg *.jpeg *.tif *.tiff *.png"

set "N=0"
for %%f in (%EXTS%) do set /a N+=1
if %N%==0 (
    echo No image files found!
    exit /b 1
)

where exiftool >nul 2>&1 || (echo exiftool not found in PATH. Install from https://exiftool.org & exit /b 1)

echo Shifting timestamps by +1 hour for %N% image(s)...
exiftool -overwrite_original -AllDates+=1:00:00 %EXTS%

if errorlevel 1 (
    echo Something went wrong.
) else (
    echo Done.
)
endlocal
