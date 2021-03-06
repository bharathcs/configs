set nocompatible

source ~/config/nvim/autoload/plug.vim
source ~/config/nvim/basicOptions.vim
source ~/config/nvim/autocomplete.vim

" Download plug.vim and put it in nvim/autoload
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'TovarishFin/vim-solidity'
Plug 'reewr/vim-monokai-phoenix'
Plug 'preservim/nerdtree'

call plug#end()

" color nord
color monokai-phoenix

" For math stuff (matrices, etc):
source ~/config/nvim/math-config.vim

" To make use of the vim-pandoc and vim-pandoc-syntax plugin effectively, I
" added *.md to this
autocmd BufNewFile,BufRead,BufFilePost *.md,*.pandoc,*.pdk,*.pd,*.pdc set filetype=pandoc
autocmd FileType pandoc setlocal foldcolumn=0

" For Hledger stuff

autocmd BufNewFile,BufRead,BufFilePost hledger.journal set filetype=ledger
autocmd BufNewFile,BufRead,BufFilePost *.hledger set filetype=ledger
autocmd FileType ledger setlocal colorcolumn=40,56,64
autocmd FileType ledger setlocal colorcolumn=40,56,64
autocmd FileType ledger setlocal tabstop=8
autocmd FileType ledger setlocal shiftwidth=8
autocmd FileType ledger source ~/config/nvim/hledger.vim

