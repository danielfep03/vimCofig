syntax on

set noerrorbells
set background=dark
"" set tabstop=4 softtabstop=4
set number relativenumber
set mouse=a
"" set expandtab
set smartindent

set incsearch

highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:auto_save = 1
let g:termdebug_wide=$0

autocmd BufNewFile *.py 0put =\"#!/usr/bin/python3\<nl>\"|$
autocmd BufNewFile *.js 0put =\"#!/usr/bin/node\<nl>\"|$

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Windows Navigation
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-t> :NERDTreeToggle<CR>

" --------- Moving up and down in visual mode --------------

xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '>-2<CR>gv=gv

" ---------------- Coc TAB completion -----------------------
 set hidden
 set cmdheight=2
 set updatetime=300

 
 imap <silent><expr> <TAB>
   \ pumvisible() ? "\<C-n>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" ------------- Show documentation in preview window ----------------
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" -----------------------------------------------------------
source ~/.vim/plugins.vim 
colorscheme gruvbox


