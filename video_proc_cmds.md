# Convert from mp4 to GIF
Convert a video to gif, specified by size and frames per second
```bash
export FILE_IN=output1.mp4
ffmpeg -i $FILE_IN \
    -vf "fps=10,scale=640:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
    -loop 0 output1.gif
```

# Trim video

- Trim a video to selected start and end timestamp
```bash
export FILE_IN=icca_video.mp4
ffmpeg -i $FILE_IN -ss 00:00:00 -t 00:00:00 output1.mp4
```

- Trim a video and preserve the quality
```bash
ffmpeg -i $FILE_IN -ss 00:00:00 -t 00:00:00 -c:v libx264 -crf 20 -c:a aac -strict -2 output1.mp4
```


# Windows
Windows media player might not accept certain formats of MP4, so the following command converts it to the accepted format.

## Convert to windows format
```bash
ffmpeg -i $FILE_IN.mp4 -pix_fmt yuv420p  "$FILE_IN"_win.mp4
```