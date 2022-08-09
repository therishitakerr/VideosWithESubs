#!/bin/bash

if [ ! -d "no_subtitles" ]; then
    mkdir no_subtitles
fi

for file in *; do
    if [ -f "$file" ]; then
        if [[ ($file == *.mkv) || ($file == *.mp4) || ($file == *.wmv) || ($file == *.mov) ]]; then
            present=$(
                ffmpeg -i "$file" -c copy -map 0:s:0 -frames:s 1 -f null - -v 0 -hide_banner
                echo $?
            )
            echo $present
            if [ "$present" == 1 ]; then
                mv "$file" no_subtitles
            fi
        fi
    fi
done
exit
