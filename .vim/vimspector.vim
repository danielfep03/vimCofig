let g_vimspector_enable_mapping = 'HUMAN'
map <leader>dd :call vimspector#Launch()<CR>
map <leader>dx :VimspectorReset<CR>
map <leader>de :VimspectorEval
map <leader>dw :VimspectorWatch
map <leader>do :VimspectorShowOutput
