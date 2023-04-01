#!/bin/bash

pattern=$1
output=$2

dir=`pwd`
rm /tmp/concat_list.txt
for file in `ls $1`
do
	echo "file '$dir/$file'" >> /tmp/concat_list.txt
done

ffmpeg -f concat -safe 0 -i /tmp/concat_list.txt -c copy -avoid_negative_ts make_zero $output
