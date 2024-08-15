#!/bin/bash

# Create the 'no_subtitles' directory if it doesn't exist
mkdir -p "no_subtitles"

# Process each file in the current directory
for file in *.mkv *.mp4 *.wmv *.mov; do
    # Check if the file exists
    if [[ -f "$file" ]]; then
        # Get the subtitle count using mediainfo
        local present
        present=$(mediainfo --Inform="General;%TextCount%" "$file")

        # Print the subtitle count
        echo "$present"

        # Move the file if it has no subtitles
        if (( present < 1 )); then
            mv "$file" no_subtitles/
        fi
    fi
done

exit
