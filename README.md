# Media scripts
A collection of scripts for managing media files

Some are simple commands, some more complex scripts. Usually vibecoded. Designed to be run in folder containing the files if not specified otherwise.

## Fill Missing Lens EXIF
- requires [EXIFtool](https://exiftool.org/)
- when shooting vintage lenses, EXIF doesn't contain the lens metadata
- the script runs through image files and if they don't contain lens information, it assigns it
- written for my Exactar 135 mm f/2.8 -> the script needs to be modified for your lens

## Make IG Post
- requires [ImageMagick](imagemagick.org)
- adds white pillarboxes and exports 1800x2250 images of all images in folders not endimng with _post
- used for making IG posts

## Offset EXIF Time +1h
- requires [EXIFtool](https://exiftool.org/)
- used to compensate for incorrect time of taking the picture due to DST 
