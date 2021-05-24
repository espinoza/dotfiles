" Basic NERDTree options
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = getcwd()
let g:NERDTreeWinSize = 30
let g:NERDTreeDirArrows = 0

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *
            \ if argc() == 1
            \ && isdirectory(argv()[0])
            \ && !exists('s:std_in')
                \ | wincmd p | enew | execute 'cd '.argv()[0]
                \ | execute 'NERDTree' argv()[0]
            \ | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Automatic highlighting of current buffer on NERDTree
autocmd BufEnter,BufWritePost * call NERDTreeAutoFindBuffer()
function NERDTreeAutoFindBuffer()
  if g:NERDTree.IsOpen()
        \ && bufname() != t:NERDTreeBufName
        \ && filereadable(bufname())
        \ && !&diff
        \ && getcwd() . '/' . @% == expand('%:p') 
    NERDTreeFind
    wincmd p
  endif
endfunction

" Automatic refresh to avoid fix bad alignment when a folder is open
autocmd CursorHold NERD_tree* :NERDTreeRefreshRoot

" nerdtree-git
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" nerdtree syntax highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" devicons
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding=""
let g:DevIconsEnableFoldersOpenClose = 1
