" Plug
call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" themes
"Plug 'morhetz/gruvbox'
"Plug 'dracula/vim'
Plug 'cormacrelf/vim-colors-github'

" file explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" this last one requires install font from
" https://github.com/ryanoasis/nerd-fonts

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" other
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()


set encoding=UTF-8
set number          " show line numbers
set scrolloff=8     " number of lines from cursor to nearest limit
set timeoutlen=300  " miliseconds to wait for mapping
filetype plugin on  " filetype detection and specific plugins

let mapleader=" "

" syntax options
syntax enable

" theme options
set termguicolors
let g:github_colors_soft = 1
let g:github_colors_block_diffmark = 0
set background=light
colorscheme github
let g:lightline = { 'colorscheme': 'github' }
set cursorline
call github_colors#togglebg_map('<f5>')

" searching options
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searching case insensitive
set smartcase   " case sensitive if input contains at least one capital letter

" indentline options
let g:indentLine_char = '|'

" nerdtree options
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>nt :NERDTreeToggle<CR>

" emmet options
let g:user_emmet_leader_key=','         " redefine trigger key
let g:user_emmet_install_global=0       " disable for all filetypes...
autocmd FileType html,css EmmetInstall  " ...and enable just for html/css

" mapping for terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-[> <Esc>

" mapping for split windows
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" coc.nvim config
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-eslint']

" mapping for faster way to save a file
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
