so ~/.vim/plugins.vim
so ~/.vim/vimspector.vim
let mapleader =","

syntax on
set mouse=a

set number relativenumber
autocmd TextChanged,TextChangedI <buffer> silent write
autocmd BufNewFile *.py 0put =\"#!/usr/bin/python3\<nl>\"|$

set tabstop=4
let NERDTreeMapOpenInTab='<ENTER>'
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
