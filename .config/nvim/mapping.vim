let mapleader=" "

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

" mapping for faster file managment
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>d :call DeleteBuffer()<CR>
nnoremap <Leader>o :enew<CR>
nnoremap <Leader>e :e 
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
nnoremap <Leader>g :e#<CR>

function! DeleteBuffer()
	if len(getbufinfo({'buflisted':1}))==1
		bdelete
	else
		bprevious
		bdelete #
	endif
endfunction


" tab key to select an item on coc.nvim menu
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" NERDTree
map <Leader>t :call NERDTreeToggleAndRefresh()<CR>
function NERDTreeToggleAndRefresh()
	:NERDTreeToggle
	if g:NERDTree.IsOpen()
		:NERDTreeRefreshRoot
	endif
endfunction

" git blame
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>
