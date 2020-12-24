set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:clang_c_options = '-std=gnu11'
Plugin 'VundleVim/Vundle.vim'

" Here we are going to add new Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'vim-python/python-syntax'
Plugin 'neoclide/coc.nvim'
Plugin 'puremourning/vimspector'
Plugin 'artanikin/vim-synthwave84'

call vundle#end() " required
filetype plugin indent on " required

