#!/bin/bash


input=$1
output=$2
resolution=$3

# hor 960:540
# vert 304:540

ffmpeg -y -i $input -vf scale=$resolution -af "aresample=48000" -b:a 256000 -b:v 2000000 $output
