#!/bin/bash

if [ ! -d "no_subtitles" ]; then
	mkdir no_subtitles
fi

for file in *; do
	if [ -f "$file" ]; then
		if [[ ($file == *.mkv) || ($file == *.mp4) || ($file == *.wmv) || ($file == *.mov) ]]; then
			present=$(
			mediainfo --Inform="General;%TextCount%" "$file"
		)
		echo $present
		if [[ "$present" < 0 ]]; then
			if [ ! -d "no_subtitles" ]; then
				mkdir no_subtitles
			fi
			mv "$file" no_subtitles
		fi
		fi
	fi
done
