ffmpeg -i 2022-06-09@23:14:42.mp4 -ss 00:00:00 -t 00:00:02 -c copy 2022-06-09@23:14:45.mp4
ffmpeg -i 2022-06-09@23:14:42.mp4 -ss 00:00:18 -t 00:00:03 -c copy 2022-06-09@23:14:55.mp4
ffmpeg -i 2022-06-10@02:30:01.mp4 -ss 00:00:00 -t 00:00:05 -c copy 2022-06-10@02:30:02.mp4
ffmpeg -i 2022-06-10@02:30:01.mp4 -ss 00:00:34 -t 00:00:05 -c copy 2022-06-10@02:30:37.mp4


ffmpeg -i 2022-06-10@02:31:53.mp4 -ss 00:01:35 -t 00:00:05 -c copy 2022-06-10@02:32:05.mp4
ffmpeg -i 2022-06-10@02:31:53.mp4 -ss 00:01:20 -t 00:00:05 -c copy 2022-06-10@02:31:54.mp4
ffmpeg -i 2022-06-10@02:38:32.mp4 -ss 00:00:15 -t 00:00:08 -c copy 2022-06-10@02:38:33.mp4

mv 2022-06-09@23:14:42.mp4 original-2022-06-09@23:14:42.mp4
mv 2022-06-10@02:38:32.mp4 original-2022-06-10@02:38:32.mp4
mv 2022-06-10@02:31:53.mp4 original-2022-06-10@02:31:53.mp4
ffmpeg -i 2022-06-10@02:30:37.mp4 -map_metadata 0 -metadata:s:v rotate="90" -codec copy no-rot-2022-06-10@02:30:37.mp4


mv 2022-06-10@02:30:37.mp4 original-2022-06-10@02:30:37.mp4
mv no-rot-2022-06-10@02:30:37.mp4 2022-06-10@02:30:37.mp4
mv 2022-06-10@02:31:22.mp4 original-2022-06-10@02:31:22.mp4
mv 2022-06-08@23:45:45.mp4 original-2022-06-08@23:45:45.mp4
mv 2022-06-10@02:31:53.mp4 original-2022-06-10@02:31:53.mp4
mv 2022-06-09@23:14:42.mp4 original-2022-06-09@23:14:42.mp4
mv 2022-06-10@02:38:32.mp4 original-2022-06-10@02:38:32.mp4
mv 2022-06-10@02:30:01.mp4 original-2022-06-10@02:30:01.mp4
mv 2022-06-10@02:39:08.mp4 original-2022-06-10@02:39:08.mp4
mv 2022-06-10@02:31:11.mp4 original-2022-06-10@02:31:11.mp4
mv 2022-06-10@02:39:53.mp4 original-2022-06-10@02:39:53.mp4
mv 2022-06-10@02:31:14.mp4 original-2022-06-10@02:31:14.mp4
mv 2022-06-10@02:39:58.mp4 original-2022-06-10@02:39:58.mp4

#cp 2022-06-10@02:30:37.mp4 no-rot-2022-06-10@02:30:37.mp4 