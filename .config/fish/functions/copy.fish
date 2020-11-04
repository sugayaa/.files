# Defined in - @ line 1
function copy --wraps='xclip -sel c <' --description 'alias copy xclip -sel c <'
  xclip -sel c < $argv;
end
