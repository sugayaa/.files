set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source  $HOME/.vimrc
source  $HOME/.config/nvim/plug-config/coc.vim
source  $HOME/.config/nvim/rainbow-parentheses/rb.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
