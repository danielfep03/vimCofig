set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:clang_c_options = '-std=gnu11'
Plugin 'VundleVim/Vundle.vim'

" (*) Here add plugins lines
Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-python/python-syntax'
Plugin 'https://github.com/puremourning/vimspector'
Plugin '907th/vim-auto-save'
Plugin 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plugin 'https://github.com/morhetz/gruvbox'
Plugin 'https://github.com/turbio/bracey.vim'

call vundle#end()
let g:vimspector_enable_mappings = 'HUMAN'
