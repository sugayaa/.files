#!/bin/bash

FILE=$(ls /home/sugaya/media/wallpapers | shuf -n 1)
killall live-wallpaper.sh || killall live-wallpaper.
wal -i /home/sugaya/media/wallpapers/$FILE -o /home/sugaya/crs/dev/scripts/wal-set
