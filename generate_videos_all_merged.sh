#!/bin/bash

for n in {1..37}; 
do
    ffmpeg -framerate 10 -pattern_type glob -i "./vis_$n/*.jpg" -color_primaries bt2020 -color_trc bt709 -colorspace bt2020_ncl -color_range pc -bsf:v h264_metadata=video_full_range_flag=1:colour_primaries=9:transfer_characteristics=1:matrix_coefficients=9 ./dataset_vis/merged_$n.mp4
    echo $n
done

