if not set -q __tty
    set -g __tty (tty)
end
#Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        if test $__tty = '/dev/tty1'
            exec startx -- -keeptty
        end
    end
end

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/sugaya/node_modules/tabtab/.completions/serverless.fish ]; and . /home/sugaya/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/sugaya/node_modules/tabtab/.completions/sls.fish ]; and . /home/sugaya/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/sugaya/node_modules/tabtab/.completions/slss.fish ]; and . /home/sugaya/node_modules/tabtab/.completions/slss.fish

# cat ~/.cache/wal/sequences
fish_vi_key_bindings
