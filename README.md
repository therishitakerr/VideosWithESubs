# VideosWithESubs
basic bash script which seperates videos with embed subs from rest of the video files

# Requirements
1. ffmpeg

# How to run

1. copy script.sh to the folder containing video files

2. add executable permission to the script file
```
chmod +x script.sh
```
 
3. run script,
```
./script.sh
```
 
videos without subtitles streams will be moved to folder named "no_subtitles"

# Use case

Example: If you download videos from a channel or a playlist and want to seperate videos with embed subs from rest of the videos
```
yt-dlp -i --embed-thumbnaii --add-metada --sub-lang en --embed-subs 'url'
```

# Reference

based on a answer from [stackoverflow](https://stackoverflow.com/questions/43005432/check-if-a-video-file-has-subtitles)
