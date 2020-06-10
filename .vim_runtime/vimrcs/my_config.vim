try
    colorscheme gruvbox
catch
endtry
set background=dark
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

"copy paste utils
vnoremap <C-c> "+y
map <C-v> "+p


set relativenumber
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

