" Plug
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


set encoding=UTF-8
set number          " show line numbers
set scrolloff=8     " number of lines from cursor to nearest limit
set timeoutlen=300  " miliseconds to wait for mapping
filetype plugin on  " filetype detection and specific plugins

let mapleader=" "

" syntax options
syntax enable

" theme options
set background=light
colorscheme PaperColor
highlight Normal ctermfg=0
let g:airline_theme='papercolor'
set cursorline
map <F5> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

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

" mapping for faster file managment
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
nnoremap <Leader>g :e#<CR>

" air-line options
set noshowmode
let g:airline_extensions = ['branch', 'tabline', 'hunks']
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
