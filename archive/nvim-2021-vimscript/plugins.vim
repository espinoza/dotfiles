call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax'
Plug 'tweekmonster/django-plus.vim'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'cormacrelf/vim-colors-github'
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim'

" file explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" this last one requires install font from
" https://github.com/ryanoasis/nerd-fonts
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'

" other
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'preservim/tagbar'

call plug#end()

