#!/bin/bash
[ "$#" -lt "1" ] || [ "$#" -gt "2" ] && {  echo -e "usage $0 <sleep> /path/to/name.gif" ; echo "try 0.010 as sleep time, sleep time in seconds" ; exit 1 ; }
dir=/tmp/live-wallpaper
sleep_time=$1
name=$2


[[ "$name" == "" ]] && { name=$sleep_time ; sleep_time=${name##*-} ; }

hash=`md5sum $name | cut -f1 -d" "`

[[ ! -d $dir ]] && mkdir $dir

[[ ! -d $dir/$hash ]] && { mkdir $dir/$hash ; echo "extracting gif images .." ; convert -coalesce $name $dir/$hash/img.png ; echo ok ; }

images=`ls $dir/$hash -v`

while : ; do for i in $images ; do feh --bg-fill $dir/$hash/$i ; sleep $sleep_time ; done ; done

