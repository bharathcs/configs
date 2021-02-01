" Text Expander
inoremap \main  public static void main(String[] args){<CR>}<Esc>O
inoremap \jprint System.out.print()<Left>

" Bracket completion
inoremap (      ()<Left>
inoremap ((     (
inoremap ()     ()

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Markdown
inoremap **     ****<Left><Left>
inoremap ****   ****
inoremap `      ``<Left>
inoremap ``     ``
inoremap ```    ```<CR><CR>```<Up><Up><Esc>A

