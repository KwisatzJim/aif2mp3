#!/bin/bash

for file in *.aif; do
    ffmpeg -i "$file" -codec:a libmp3lame -qscale:a 2 "${file%.aif}.mp3"
done

# remove the aif files to save space.  Comment if you want to keep them
rm *.aif
