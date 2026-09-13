@echo off
setlocal

rem ============================================================
rem  MakeIGPost - pillarboxes photos to 4:5 for Instagram.
rem  Photo is scaled to fit 1800x2250, centered on a #fafafa
rem  background (white bars on the sides, none top/bottom).
rem  Output: <name>_post.jpg, JPEG quality 95. Originals untouched.
rem  Skips files already ending in _post (so landscape pre-cropped posts are left alone). Reruns are fine - outputs are simply regenerated.
rem
rem  Place this .bat in the folder with your images and run it.
rem  Requires ImageMagick in PATH: https://imagemagick.org
rem ============================================================

where magick >nul 2>&1 || (echo magick not found in PATH. Install from https://imagemagick.org & exit /b 1)

echo Creating 1800x2250 Instagram posts...
for %%f in (*.jpg *.jpeg) do (
    set "name=%%~nf"
    setlocal enabledelayedexpansion
    set "skip="
    if /i "!name:~-5!"=="_post" set "skip=1"
    if not defined skip (
        echo   %%f
        magick "%%f" -resize 1800x2250 -gravity center -background "#fafafa" -extent 1800x2250 -quality 95 "%%~nf_post.jpg"
    )
    endlocal
)

echo Done.
endlocal
