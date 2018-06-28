set nocompatible
set ruler
set number
set showcmd
syntax on
filetype off

" General
set backspace=indent,eol,start
set backupdir=~/.vim/backup

" Set encoding
set encoding=utf-8
set t_Co=256o

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Plugins
source ~/.vim/plugins.vim
