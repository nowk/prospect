set encoding=utf-8
set t_Co=256
set shell=bash
set nocompatible " be iMproved

filetype off

if has("nvim")

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

endif

" Vundle.vim
"
set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()

if filereadable(expand('~/.vim/Vunfile'))
  source ~/.vim/Vunfile
endif

call vundle#end()

" vimrc local
"
if filereadable(expand('~/.vim/vimrc'))
  source ~/.vim/vimrc
endif

