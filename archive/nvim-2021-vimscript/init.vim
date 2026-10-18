so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/nerdtree-config.vim
so ~/.config/nvim/mapping.vim

set encoding=UTF-8
set number          " show line numbers
set scrolloff=8     " number of lines from cursor to nearest limit
set timeoutlen=300  " miliseconds to wait for mapping
filetype plugin on  " filetype detection and specific plugins
set hidden          " change between buffers without saving or losing history
set expandtab

" syntax options
syntax enable

" theme options
set background=dark
set termguicolors
colorscheme dracula
let g:airline_theme='dracula'
set cursorline
map <F5> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" transparent background
"hi Normal guibg=NONE ctermbg=NONE  " transparent background
"hi VertSplit ctermfg=235 ctermbg=NONE cterm=NONE
"hi VertSplit guifg=gray guibg=NONE gui=NONE

" searching options
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searching case insensitive
set smartcase   " case sensitive if input contains at least one capital letter

if $TERM == "xterm-256color"
  set t_Co=256
endif

set mouse=a
