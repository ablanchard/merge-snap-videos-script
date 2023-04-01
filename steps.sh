#!/bin/zsh


output=$1

echo "Removing metadata for horizontal videos"
#Remove metadata rotate for ok videos
for file in `cat no-rotate.txt` ; ffmpeg -i $file -map_metadata 0 -metadata:s:v rotate="0" -codec copy no-rot-$file

echo "Flipping reversed videos"
#Remove metadata rotate for ok videos
for file in `cat reverse.txt` ; ffmpeg -i $file -map_metadata 0 -metadata:s:v rotate="180" -codec copy no-rot-$file

echo "Transforming horizontal videos"
# change resolution for not rotated
for file in `cat no-rotate.txt reverse.txt` ; ../scripts/scale-down.sh no-rot-$file size-$file "960:540"
for file in `cat no-rotate.txt reverse.txt` ; ../scripts/size_add_text.sh size-$file final-$file $file

rm no-rot-*
rm size-*

awk NF no-rotate.txt reverse.txt > clean-no-rotate.txt

echo "Transforming vertical videos"
# Blur and add text for rotated
for file in `ls 20* | grep -v -f clean-no-rotate.txt`; ../scripts/scale-down.sh $file "size-$file" "304:540"
for file in `ls 20* | grep -v -f clean-no-rotate.txt`; ../scripts/blur_add_text.sh "size-$file" "final-$file" $file

rm size-*

echo "Concat every videos into one"
#concat
../concat.sh "final*" "$output"
