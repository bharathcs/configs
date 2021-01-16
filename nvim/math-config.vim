" Matrix maker: start with '[', end with ']', delimit with ' ', newline ';'
let @m = 'A[ smth smth ; smth smth ]:s/\[\s/\[/g:s/\s\]/\]/g:s/\s;\s/;/g:s/\s/ \& /g:s/;/ \\\\ /g:s/\[/\\left\( \\begin\{array\} /g:s/\]/ \\end\{array\} \\right\)/g$vbbbbbbbbbbbbbbbbbbbbbbld'
" Converts MatLab output into input for matrix maker
let @d = 'a ;kb    ;:s/  / /g:s/  / /g:s/  / /gI00ikb ;kbkb'

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

