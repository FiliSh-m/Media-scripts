@echo off
setlocal

rem ============================================================
rem  FillMissingLens - writes lens info into images that have
rem  no LensModel tag yet. Images that already have a lens
rem  listed are left untouched.
rem
rem  Place this .bat in the folder with your images and run it.
rem  Requires exiftool in PATH: https://exiftool.org
rem ============================================================

where exiftool >nul 2>&1 || (echo exiftool not found in PATH. Install from https://exiftool.org & exit /b 1)

echo Writing Exactar 135 mm f/2.8 into images without a lens...
exiftool -overwrite_original -if "not length $LensModel" "-LensModel=Exactar 135 mm f/2.8" -FocalLength=135 -MaxAperture=2.8 *.jpg *.jpeg *.tif *.tiff *.png

if errorlevel 1 (
    echo Nothing needed updating or an error occurred.
) else (
    echo Done.
)
endlocal
