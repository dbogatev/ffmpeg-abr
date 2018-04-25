#!/bin/bash
input=$1
output_hd=$2
output_sd=$3
while true; do
    ffmpeg -nostdin -re -analyzeduration 11000000 -i $input \
        -s hd720 -vcodec libx264 -g 48 -keyint_min 48 -sc_threshold 0 -bufsize 2800k -minrate 2300k -maxrate 2500k \
        -acodec aac -ac 2 -strict experimental \
        -f flv $output_hd \
        -s 640:360 -vcodec libx264 -g 48 -keyint_min 48 -sc_threshold 0 -bufsize 900k -minrate 600k -maxrate 800k \
        -acodec aac -ac 2 -strict experimental \
        -f flv $output_sd 
sleep 3
done
