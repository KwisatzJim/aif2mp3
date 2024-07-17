#!/bin/bash

for file in *.aif; do
    mp3file="${file%.aif}.mp3"
    ffmpeg -i "$file" -codec:a libmp3lame -qscale:a 2 "$mp3file"
    if [ -f "$mp3file" ]; then
        rm "$file"
    else
        echo "Failed to create $mp3file"
    fi
done
