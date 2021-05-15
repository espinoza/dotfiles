call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'cormacrelf/vim-colors-github'
Plug 'ashfinal/vim-colors-violet'
Plug 'kaicataldo/material.vim'
"Plug 'kjssad/quantum.vim'
"Plug 'rakr/vim-one'

" file explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" this last one requires install font from
" https://github.com/ryanoasis/nerd-fonts

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim'
Plug 'rhysd/git-messenger.vim'

" other
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'preservim/tagbar'

call plug#end()

