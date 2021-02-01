set nocompatible

source ~/config/nvim/autoload/plug.vim
source ~/config/nvim/basicOptions.vim
source ~/config/nvim/autocomplete.vim

call plug#begin('~/config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
" Plug 'dense-analysis/ale'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'TovarishFin/vim-solidity'

call plug#end()

colorscheme nord

" For math stuff (matrices, etc):
source ~/config/nvim/math-config.vim

" To make use of the vim-pandoc and vim-pandoc-syntax plugin effectively, I
" added *.md to this
autocmd BufNewFile,BufRead,BufFilePost *.md,*.pandoc,*.pdk,*.pd,*.pdc set filetype=pandoc
autocmd FileType pandoc setlocal foldcolumn=0

