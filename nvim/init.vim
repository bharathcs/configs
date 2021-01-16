set tabstop=4
set shiftwidth=4
set expandtab

set ruler               " Show the line and column numbers of the cursor.
set wrap                " wrap on
set linebreak           " soft wrap
set number              " line numbers on
set foldcolumn=0
set foldlevel=99

" Stop Ctrl-w from deleting words in insert. Instead it goes to normal to
" hear your command and then goes back to insert mode:
" imap <C-w> <C-o><C-w>
imap <C-w> <Esc><C-w>

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'vim-pandoc/vim-pandoc'
Plug 'TovarishFin/vim-solidity'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

colorscheme nord

syntax enable
noremap <silent> k gk
noremap <silent> j gj
nnoremap <silent> ,<space> :exe ':silent ! open -a Typora %' 

" For math stuff (matrices, etc):
source ~/config/nvim/math-config.vim


" To make use of the vim-pandoc and vim-pandoc-syntax plugin effectively, I
" added *.md to this
autocmd BufNewFile,BufRead,BufFilePost *.md,*.pandoc,*.pdk,*.pd,*.pdc set filetype=pandoc
autocmd FileType pandoc setlocal foldcolumn=0
