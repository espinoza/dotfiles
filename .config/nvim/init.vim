" Plug
call plug#begin('~/.local/share/nvim/plugged')

" syntax 
Plug 'sheerun/vim-polyglot'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'

" file explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" this last one requires install font from
" https://github.com/ryanoasis/nerd-fonts

" other
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'

call plug#end()


set encoding=UTF-8
set number          " show line numbers
set scrolloff=8     " number of lines from cursor to nearest limit
set timeoutlen=300  " miliseconds to wait for mapping
filetype plugin on  " filetype detection and specific plugins

" syntax options
syntax enable

" theme options
colorscheme dracula
highlight Normal ctermbg=233

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
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" emmet options
let g:user_emmet_leader_key=','         " redefine trigger key
let g:user_emmet_install_global=0       " disable for all filetypes...
autocmd FileType html,css EmmetInstall  " ...and enable just for html/css

" mapping for terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <A-[> <Esc>

" mapping for split windows
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" coc.nvim config
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" mapping for faster way to save a file
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
