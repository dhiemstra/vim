set nocompatible
set ruler
set number
set showcmd
set cursorline

syntax on
filetype off

" General
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set backspace=indent,eol,start
set backupdir=~/.vim/backup

let mapleader = "\<Space>"

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

" Includes
source ~/.vim/plugins.vim
source ~/.vim/functions.vim
source ~/.vim/bindings.vim

" Plugin configuration
let g:pymode_lint = 0

" Colorschemes
" gruvbox, inkpot, zenburn, hybrid_material
"
" https://github.com/jacoborus/tender.vim
" https://github.com/NLKNguyen/papercolor-theme

set background=light
colorscheme PaperColor
" let g:lightline.colorscheme='onehalfdark'
