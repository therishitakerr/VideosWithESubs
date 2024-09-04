#!/bin/bash

currDir="$1"

for file in "$currDir"/*; do
    if [ -f "$file" ]; then
        if [[ ("$file" == *.mkv) || ("$file" == *.mp4) || ("$file" == *.wmv) || ("$file" == *.mov) ]]; then
            present=$(
                mediainfo --Inform="General;%TextCount%" "$file"
            )
            echo "$present"
            if [[ "$present" -lt 1 ]]; then
                mkdir -p "$currDir/no_subtitles"
                mv "$file" "$currDir/no_subtitles"
            fi
        fi
    fi
done
