#!/bin/sh

# from http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html

start_time=$3
duration=$4

palette="/tmp/palette.png"

filters="fps=15,scale=320:-1:flags=lanczos"
#filters="fps=15,scale=320:-1:flags=lanczos,transpose=2"
# 2 = CCW, 1 = CW

ffmpeg -v warning -ss $start_time -t $duration -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -ss $start_time -t $duration -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y $2
