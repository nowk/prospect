set encoding=utf-8
set t_Co=256
set shell=bash
set nocompatible " be iMproved
set title
set titlestring=%{expand('%:p:h')}

filetype off

" TODO Why do we need this again?...
if has("nvim")
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
endif

" vim-plug starup
" NOTE we installed ito ~/.vim/autoload so no need to init like Vundle
call plug#begin('~/.vim/bundle')
if filereadable(expand('~/.vim/Vunfile'))
  source ~/.vim/Vunfile
endif
call plug#end()

" load our vimrc
if filereadable(expand('~/.vim/vimrc'))
  source ~/.vim/vimrc
endif

