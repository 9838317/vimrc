syntax on
:set number
:set numberwidth=2
:set wrap

:let mapleader = "qw"

:iabbrev <leader>con <esc>:source $MYVIMRC<cr>
:iabbrev <leader>to2 <esc>:vsplit $MYVIMRC<cr>

":inoremap <leader>w <esc>viw<esc>a"<esc>hbi"<esc>lela<space>

:nnoremap <F6> <esc>:wq!<enter>
:inoremap <F6> <esc>:wq!<enter>

:vnoremap <F9>  <S-<>
:vnoremap <F10> <S->>


:inoremap <leader>q <esc>viw<esc>a"<esc>hbi"<esc>lela
:inoremap jk <esc>
:inoremap <Tab> <C-x><C-n>




" html file settings ---------------------- {{{

:autocmd FileType html  :iabbrev <leader>p console.log(1234);
:autocmd FileType html  :inoremap <leader>rc <esc>iReact.createClass<enter>({<enter>render: function()<enter>{<enter><enter>}<enter>})<up><up>       <space>
:autocmd FileType html  :inoremap <leader>rd <esc>iReactDOM.render(document.getElementById(""));<left><left><left>

:autocmd FileType html  :inoremap <leader>4 :put %<enter>dd :w!<enter>:bd<enter>:edit <C-r>"<backspace><enter>
:autocmd FileType html  :nnoremap <leader>4 :put %<enter>dd :w!<enter>:bd<enter>:edit <C-r>"<backspace><enter>



" }}}





" c file settings ---------------------- {{{


:autocmd FileType c  :inoremap <leader>c <esc>i#include <stdio.h><enter>#include <stdlib.h><enter>#include <string.h><enter><enter>int main()<enter>{<enter>printf("%d \n", 1234);<enter>}

:autocmd FileType c  :inoremap <leader>4 :put %<enter>dd :w!<enter>:bd<enter>:edit <C-r>"<backspace><enter>
:autocmd FileType c  :nnoremap <leader>4 :put %<enter>dd :w!<enter>:bd<enter>:edit <C-r>"<backspace><enter>

:autocmd FileType c  :iabbrev <leader>p printf("%s \n", "this is the tested string");


" }}}












" java file settings ---------------------- {{{

:autocmd FileType java  :inoremap <leader>4 :put %<enter>dd :w!<enter>:bd<enter>:edit <C-r>"<backspace><enter>
:autocmd FileType java  :nnoremap <leader>4 :put %<enter>dd :w!<enter>:bd<enter>:edit <C-r>"<backspace><enter>

:autocmd FileType java  :inoremap <leader>v ()<left>
:autocmd FileType java  :inoremap <leader>b []<left>
:autocmd FileType java  :inoremap <leader>n <esc>o{<enter>}<left><space><space><space><space>
:autocmd FileType java  :inoremap <leader>m <esc>ea<space>

:autocmd FileType java  :iabbrev iff if()<left><left>
:autocmd FileType java  :iabbrev whilee while()<left><left>

:autocmd FileType java  :iabbrev <leader>p System.out.println("this is the test text.\n");

:autocmd FileType java  :inoremap <leader>g ()<esc>bbipublic <esc>o{<enter>}<up><space><space><space><space> 

:autocmd FileType java  :iabbrev <leader>c <esc>ipublic<space>class<space><esc>:put %<enter>$a<backspace><backspace><backspace><backspace><backspace><esc>bi<backspace><esc>o{<enter>public<space>static<space>void<space>main(String[]<space>args)<enter>{<enter><enter><left><left><left><left>}<enter><left><left><left><left>}<up><up>      <space>

:autocmd FileType java  :iabbrev <leader>d <esc>i    public static void main(String[] args)<enter>{}<left><enter>


:autocmd FileType java :iabbrev <leader>lp for (int<space>i<space>=<space>0;<space>i<space><<space>n;<space>i++)<enter>{<enter><space><enter>}<up>

" }}}



" python file settings ---------------------- {{{

:autocmd FileType python     :iabbrev <leader>p print ("this is the text file")
:autocmd FileType python     :iabbrev <leader>in def __init__(self):<enter>
:autocmd FileType python     :iabbrev <leader>fun <esc>__init__(self):<enter>
:autocmd FileType python     :iabbrev <leader>sf <left>(self):<esc>0widef <esc>$<left><left>i
:autocmd FileType python     :iabbrev <leader>o <esc>o

:autocmd FileType python     :iabbrev iff if:<left>




" }}}


" Vimscript file settings ---------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}
:setlocal foldmethod=marker
:set hlsearch incsearch



"configuration of indentation.
:set autoindent
:set expandtab ts=4 sw=4 ai
:set smartindent





:colorscheme molokai


" compile file settings ---------------------- {{{

:autocmd FileType python     :inoremap <f5>  <esc>:!python % <enter><enter>
:autocmd FileType java       :map      <leader>1  <esc>:w!<enter><esc>:!qjNoSubl %<enter> :vsplit javatxt <enter>:vsplit javacompile<enter><enter>
:autocmd FileType java       :inoremap <leader>1  <esc>:w!<enter><esc>:!qjNoSubl %<enter> :vsplit javatxt <enter>:vsplit javacompile<enter><enter>
:autocmd FileType java       :map      <leader>2  :wincmd w<enter>:wincmd w<enter><C-w>o
:autocmd FileType java       :inoremap <leader>2  :wincmd w<enter>:wincmd w<enter><C-w>o

:autocmd FileType java       :map      <leader>3  :wq!<enter>
:autocmd FileType java       :inoremap <leader>3  :wq!<enter>

:autocmd FileType c          :map      <leader>1  <esc>:w!<enter><esc>:!c %<enter> :vsplit ctxt <enter>:vsplit ccompile<enter><enter>
:autocmd FileType c          :inoremap <leader>1  <esc>:w!<enter><esc>:!c %<enter> :vsplit ctxt <enter>:vsplit ccompile<enter><enter>

:autocmd FileType c          :map      <leader>2  :wincmd w<enter>:wincmd w<enter><C-w>o
:autocmd FileType c          :inoremap <leader>2  :wincmd w<enter>:wincmd w<enter><C-w>o


" }}}


" :%retab




":let maplocalleader = "\\"
":nnoremap <leader>c <esc>I#<esc>i

":autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
":autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
":inoremap <esc> <nop>
