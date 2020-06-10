#Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
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

fish_vi_key_bindings
