
# Videos with Embedded Subtitles

The `VideosWithESubs` project provides a script for embedding subtitles into video files. This tool is useful for permanently integrating subtitles into your videos, making them more accessible without needing separate subtitle files.

## Overview

The `VideosWithESubs.sh` script allows you to merge subtitle files with video files. It supports various video and subtitle formats and is designed for batch processing.

## Features

- **Embed Subtitles**: Integrate subtitle files into video files.
- **Batch Processing**: Handle multiple videos and subtitles at once.
- **Flexible Format Support**: Works with multiple video and subtitle formats.

## Requirements

- **FFmpeg**: A versatile tool for video processing.
  - **Ubuntu/Debian**: Install with `sudo apt-get install ffmpeg`
  - **MacOS**: Install with `brew install ffmpeg`
  - **Windows**: Download from [FFmpeg official website](https://ffmpeg.org/download.html)

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/therishitakerr/VideosWithESubs.git
   cd VideosWithESubs
   ```

2. **Prepare Your Files**:
   Ensure that your subtitle files (`.srt`, `.ass`, etc.) and video files (`.mp4`, `.mkv`, etc.) are placed in the appropriate directories.

3. **Run the Script**:
   Make the script executable and run it to embed subtitles into your videos:
   ```bash
   chmod +x VideosWithESubs.sh
   ./VideosWithESubs.sh
   ```

   **Script Usage**:
   The script processes all subtitle files in the `subtitles/` directory and merges them with corresponding video files in the `videos/` directory. Ensure the subtitle and video files have matching names for correct pairing.

4. **Check the Output**:
   The script will create new videos with embedded subtitles in the output directory specified in the script.

## Example

1. **Initial Directory Structure**:
   ```
   /path/to/videoswithsubtitles/
   ├── videos/
   │   ├── video1.mp4
   │   └── video2.mkv
   └── subtitles/
       ├── video1.srt
       └── video2.ass
   ```

2. **After Running the Script**:
   New video files with embedded subtitles will be generated in the output directory:
   ```
   /path/to/videoswithsubtitles/
   ├── videos/
   │   ├── video1.mp4
   │   └── video2.mkv
   ├── subtitles/
   │   ├── video1.srt
   │   └── video2.ass
   └── output/
       ├── video1_with_subs.mp4
       └── video2_with_subs.mkv
   ```

## Configuration

You can modify the `VideosWithESubs.sh` script to adjust input and output directories or to customize the FFmpeg command options according to your needs.

## Notes

- Ensure that subtitle files match the corresponding video files by name for automatic pairing.
- The script assumes that subtitle files are in a `subtitles/` directory and videos are in a `videos/` directory.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for suggestions, improvements, or bug fixes.
