" Plug
call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'

" theme
Plug 'morhetz/gruvbox'

" other
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'

call plug#end()


set number          " show line numbers
set scrolloff=8     " number of lines from cursor to nearest limit
set timeoutlen=300  " miliseconds to wait for mapping
filetype plugin on  " filetype detection and specific plugins

" theme options
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" syntax options
syntax on

" searching options
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searching case insensitive
set smartcase   " case sensitive if input contains at least one capital letter

" indentline options
let g:indentLine_char = '|'

" emmet options
let g:user_emmet_leader_key=','         " redefine trigger key
let g:user_emmet_install_global=0       " disable for all filetypes...
autocmd FileType html,css EmmetInstall  " ...and enable just for html/css
