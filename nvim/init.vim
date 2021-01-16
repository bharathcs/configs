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

" Matrix maker: start with '[', end with ']', delimit with ' ', newline ';'
let @m = 'A[ smth smth ; smth smth ]:s/\[\s/\[/g
" Converts MatLab output into input for matrix maker
let @d = 'a ;kb    ;:s/  / /g

iabbrev mxx \textbf{\textit{}}
iabbrev iinv ^{-1}

" Expanding VIM md syntax to include math definitions. From:
" https://stsievert.com/blog/2016/01/06/vim-jekyll-mathjax/ 
function! MathAndLiquid()
    "" Define certain regions
    " {own edit} Any math
    syn region math start=/\$/ end=/\$/

    "" Block math. Look for "$$[anything]$$"
    " syn region math start=/\$\$/ end=/\$\$/
    "" inline math. Look for "$[not $][anything]$"
    " syn match math_block '\$[^$].\{-}\$'

    " Liquid single line. Look for "{%[anything]%}"
    syn match liquid '{%.*%}'
    " Liquid multiline. Look for "{%[anything]%}[anything]{%[anything]%}"
    syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
    " Fenced code blocks, used in GitHub Flavored Markdown (GFM)
    syn region highlight_block start='```' end='```'

    "" Actually highlight those regions.
    hi link math Statement
    hi link liquid Statement
    hi link highlight_block Function
    hi link math_block Function
endfunction

" Call everytime we open a Markdown file
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown call MathAndLiquid()


" To make use of the vim-pandoc and vim-pandoc-syntax plugin effectively, I
" added *.md to this
autocmd BufNewFile,BufRead,BufFilePost *.md,*.pandoc,*.pdk,*.pd,*.pdc set filetype=pandoc
autocmd FileType pandoc setlocal foldcolumn=0