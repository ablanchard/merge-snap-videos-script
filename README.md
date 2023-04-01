# Merge snap videos script

This repo contains some scripts that can analyse, fix and merge snap videos in order to make a full video from all of them.

 1. Detect vertical and horizontal video
 2. Properly rotate videos
 3. Apply a blur on vertical videos because output will be horizontal
 4. Add timestamp on each videos, timestamp is based on the filename. Filename should be in format: 2022-07-07@23:33:24.mp4
 5. Fix framerate and sound if videos comes from different sources
 6. Scale all videos to desired output. default: 960x540

The file steps.sh explain all the required steps to do.
