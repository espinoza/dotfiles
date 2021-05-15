" indentline options
let g:indentLine_char = '|'

" nerdtree options
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" emmet options
let g:user_emmet_leader_key=','         " redefine trigger key
let g:user_emmet_install_global=0       " disable for all filetypes...
autocmd FileType html,css,htmldjango EmmetInstall  " ...and enable just for html/css

" coc.nvim config
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-eslint', 'coc-jedi']

" air-line options
set noshowmode
let g:airline_extensions = ['branch', 'tabline', 'hunks', 'virtualenv', 'tagbar']
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
"let g:airline_symbols.linenr = '☰'     " These symbols take up a lot of space
"let g:airline_symbols.maxlinenr = ''  " and are useless, so I prefer no symbols
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
