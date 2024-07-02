#!/bin/bash

for file in *; do
	if [ -f "$file" ]; then
		if [[ ($file == *.mkv) || ($file == *.mp4) || ($file == *.wmv) || ($file == *.mov) ]]; then
			present=$(
				mediainfo --Inform="General;%TextCount%" "$file"
			)
			echo "$present"
			if [[ "$present" -lt 0 ]]; then
				mkdir -p "no_subtitles"
				mv "$file" no_subtitles
			fi
		fi
	fi
done
exit
