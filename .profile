#!/usr/bin/env sh
export EDITOR=nvim
export VISUAL=$EDITOR
export SUDO_EDITOR=$EDITOR
export BROWSER=firefox-nightly
export TERMINAL_COMMAND='alacritty -e'

QEMU=$(cat /proc/cmdline | grep vfio-pci)

if [ -z "$TMUX" ] && [ "$SSH_CLIENT" != "" ]
then
    exec tmux
elif [ "$(tty)" = '/dev/tty1' ]
then
    if [ -z $QEMU ]
    then
        startx
    else
        sudo /home/sugaya/qemu-raw.sh
        # sudo /home/sugaya/libvirt-raw.sh
        # /bin/script-do-pedrao.sh
    fi
elif [ "$(tty)" = '/dev/tty2' ]
then
    exec $(whiptail --clear --nocancel --notags \
            --menu 'Choose your destiny' 20 40 5 \
            'startsway' 'Start sway' \
            'startx' 'Start X' \
            'tmux' 'TMUX' \
            'dash' 'shell' 3>&1 1>&2 2>&3)
fi
