call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" themes
Plug 'NLKNguyen/papercolor-theme'
"Plug 'kjssad/quantum.vim'
"Plug 'cormacrelf/vim-colors-github'
"Plug 'rakr/vim-one'
"Plug 'reedes/vim-colors-pencil'

" file explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" this last one requires install font from
" https://github.com/ryanoasis/nerd-fonts

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" other
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-fugitive'

call plug#end()

