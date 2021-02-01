set nocompatible

source ~/config/nvim/autoload/plug.vim
source ~/config/nvim/basicOptions.vim
source ~/config/nvim/autocomplete.vim

call plug#begin('~/config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

colorscheme nord
