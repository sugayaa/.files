#!/usr/bin/env sh

export EDITOR=nvim
export BROWSER=firefox

if [ "$(tty)" = '/dev/tty1' ]
then
	startsway
fi

