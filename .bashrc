#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

(cat ~/.cache/wal/sequences &)

PATH=$PATH:/home/sugaya/.local/bin
alias ls='ls --color=auto'
alias vim=nvim
PS1='[\u@\h \W]\$ '
