syntax on
:set number
:set numberwidth=2
:set wrap

:let mapleader = "qw"

:iabbrev <leader>con <esc>:source $MYVIMRC<cr>
:iabbrev <leader>to2 <esc>:vsplit $MYVIMRC<cr>

":inoremap <leader>w <esc>viw<esc>a"<esc>hbi"<esc>lela<space>


:inoremap <leader>q <esc>viw<esc>a"<esc>hbi"<esc>lela<space>
:inoremap jk <esc>
:inoremap <Tab> <C-x><C-n>

" java file settings ---------------------- {{{

:autocmd FileType java  :iabbrev <leader>p System.out.println("this is the test text.\n");
:autocmd FileType java  :iabbrev <leader>c public<space>class<space>Hello<enter>{<enter><space><space><space><space>public<space>static<space>void<space>main(String[]<space>args)<enter><space><space><space><space>{<enter><enter><space><space><space><space>}<enter>}<up><up><space><space><space><space><space><space><space><space>
:autocmd FileType java :iabbrev <leader>lp int<space>i;<enter>for(i<space>=<space>0;<space>i<space><<space>n;<space>i++)<enter>{<enter><space><space><space><space><enter>}<up><space><space><space>

" }}}

" python file settings ---------------------- {{{

:autocmd FileType python     :iabbrev <leader>p print ("this is the text file")
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
:set autoindent
:colorscheme zfmolokai


" compile file settings ---------------------- {{{

:autocmd FileType python     :inoremap <f5>  <esc>:!python % <enter><enter>
:autocmd FileType java       :map      <leader>1  <esc>:w!<enter><esc>:!qjNoSubl %<enter> :vsplit javatxt <enter>:vsplit javacompile<enter><enter>
:autocmd FileType java       :inoremap <leader>1  <esc>:w!<enter><esc>:!qjNoSubl %<enter> :vsplit javatxt <enter>:vsplit javacompile<enter><enter>
:autocmd FileType java       :map      <leader>2  :wincmd w<enter>:wincmd w<enter><C-w>o
:autocmd FileType java       :inoremap <leader>2  :wincmd w<enter>:wincmd w<enter><C-w>o

:autocmd FileType java       :map      <leader>3  :wq!<enter>
:autocmd FileType java       :inoremap <leader>3  :wq!<enter>




" }}}

















":let maplocalleader = "\\"
":nnoremap <leader>c <esc>I#<esc>i

":autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
":autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
":inoremap <esc> <nop>
