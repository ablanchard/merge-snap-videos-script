#!/bin/bash 


file=$1
output=$2
text=`echo $3 | sed 's/@/ /' | sed 's/.mp4//' | sed 's/:/\\\:/g'`
echo $text
ffmpeg -y -i $file -r 24 -filter_complex "[0:v]scale=ih*1.78:-1[scale];[scale]boxblur=luma_radius=min(h\,w)/20:luma_power=1:chroma_radius=min(cw\,ch)/20:chroma_power=1[bg];[bg][0:v]overlay=(W-w)/2:(H-h)/2,crop=h=iw*9/16[blur] ; [blur]drawtext=text='$text':font='Times New Roman':x=(main_w-text_w-10):y=(main_h-text_h-10):fontsize=32:fontcolor=black:box=1:boxcolor=white@0.5:boxborderw=5" -b:v 2000000 -b:a 256000 "$output"
