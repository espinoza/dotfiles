" emmet options
let g:user_emmet_leader_key=','         " redefine trigger key
let g:user_emmet_install_global=0       " disable for all filetypes
autocmd FileType html,css,scss,htmldjango EmmetInstall

" coc.nvim config
let g:coc_global_extensions = [
            \ 'coc-emmet',
            \ 'coc-css',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-jedi'
        \ ]

" air-line options
set noshowmode
let g:airline_extensions = [
            \ 'branch',
            \ 'tabline',
            \ 'hunks',
            \ 'virtualenv',
            \ 'tagbar',
        \ ]
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

 " powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" Tagbar
let g:tagbar_width = 25
let g:tagbar_sort = 0
let g:tagbar_highlight_method = 'scoped-stl'
let g:tagbar_show_tag_count = 1
