try
    colorscheme gruvbox
catch
endtry
set background=dark
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

"copy paste utils
"vnoremap <C-c> "+y
"map <C-v> "+p


set relativenumber number
"saddistic mode
set backspace=""
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

nnoremap <SPACE> " "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set termguicolors

set listchars=eol:¬,tab:>█,trail:─,extends:»,precedes:«,space:·
set list
