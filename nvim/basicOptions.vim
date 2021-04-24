"" Set tab defaults
set tabstop=2           " set length of tab character
set expandtab           " auto expand tabs into spaces
set shiftwidth=2        " set number of spaces added for each tab
set smartindent         " keep the indent level when entering new line

" Visuals
set ruler               " Show the line and column numbers of the cursor.
set wrap                " wrap on
set linebreak           " soft wrap
set number              " line numbers on
highlight LineNr ctermfg=DarkGrey  " set line number colour to darkgrey

" Folding
set foldcolumn=0        " hide fold level column
set foldlevel=99        " by default open in max unfolded mode
set foldmethod=indent   " use zc and zo to open and close folds by indent

" Stop Ctrl-w from deleting words in insert. Instead it goes to normal to
" hear your command and then goes back to insert mode:
" imap <C-w> <C-o><C-w>
imap <C-w> <Esc><C-w>

" Let vim read your file extension and do its best to syntax highlight
syntax enable

" Let hjkl move you around the screen properly in wrap mode
noremap <silent> k gk
noremap <silent> j gj
nnoremap <silent> ,<space> :exe ':silent ! open -a Typora %'
 

set incsearch
set hlsearch
set lazyredraw
set ignorecase
set showmatch

let g:rainbow_active = 1
set laststatus=2 " enables lightline

" Open existing NERDTree on every buffer
autocmd BufWinEnter * silent NERDTreeMirror
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Ignore java compiled files
let NERDTreeIgnore=['\.class$', '\~$']
let g:NERDTreeNodeDelimiter = "\u00a0"
