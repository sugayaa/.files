#!/bin/bash

dot=/home/sugaya/media/wallpapers-gif/
FILE=$dot$(ls $dot | shuf -n 1)
echo $FILE
killall live-wallpaper.sh || killall live-wallpaper.
wal -i $FILE -o /home/sugaya/crs/dev/scripts/wal-set
./live-wallpaper.sh $FILE
