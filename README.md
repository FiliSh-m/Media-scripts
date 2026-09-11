# Media scripts
A collection of scripts for managing media files

Some are simple commands, some more complex scripts. Usually vibecoded. Designed to be run in folder containing the files if not specified otherwise.

## Fill Missing Lens EXIF
- when shooting vintage lenses, EXIF doesn't contain the lens metadata
- the script runs through image files and if they don't contain lens information, it assigns it
- written for my Exactar 135 mm f/2.8 -> the script needs to be modified for your lens

## Offset EXIF Time +1h
- used to compensate for incorrect time of taking the picture due to DST 
