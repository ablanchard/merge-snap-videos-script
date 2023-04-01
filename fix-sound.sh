
input=$1
output=$2

ffmpeg -i $input -af "aresample=48000" $output
