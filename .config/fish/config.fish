# Start sway at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startsway
    end
end

alias sudo="sudo "
alias vim="nvim"
alias ..="cd .."

fish_vi_key_bindings
