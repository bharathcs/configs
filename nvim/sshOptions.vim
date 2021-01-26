source ~/config/nvim/autoload/plug.vim
source ~/config/nvim/basicOptions.vim
source ~/config/nvim/autocomplete.vim

call plug#begin('~/config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme nord
