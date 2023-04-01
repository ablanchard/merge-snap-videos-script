#!/bin/bash 


file=$1
output=$2
raw_text=$3
text=`echo $raw_text | sed 's/@/ /' | sed 's/.mp4//' | sed 's/:/\\\:/g'`
echo $text
ffmpeg -y -i $file -r 24 -filter_complex "[0:v]drawtext=text='$text':font='Times New Roman':x=(main_w-text_w-10):y=(main_h-text_h-10):fontsize=32:fontcolor=black:box=1:boxcolor=white@0.5:boxborderw=5" -b:v 2000000 -b:a 256000 "$output"
