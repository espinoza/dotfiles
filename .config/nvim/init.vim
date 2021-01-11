" Plug
call plug#begin('~/.local/share/nvim/plugged')
" List of plugins will be here
call plug#end()

set number       " show line numbers
set scrolloff=8  " number of lines from cursor to nearest limit of visualization

" syntax options
syntax on

" indent options
set tabstop=4     " size of tab
set shiftwidth=4  " size of indentation
set expandtab     " insert spaces when tab key is pressed

" searching options
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searching case insensitive
set smartcase   " case sensitive if input contains at least one capital letter
