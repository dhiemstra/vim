set nocompatible
set ruler
set number
syntax on
filetype off

" Load vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required!
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'bling/vim-airline'
Bundle 'vim-coffee-script'
Bundle 'neocomplcache'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'Auto-Pairs'
" Bundle 'SirVer/ultisnips'
" Bundle 'scrooloose/nerdtree'
" Bundle 'taglist.vim'

" Set encoding
set encoding=utf-8
set t_Co=256

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Set correct clipboard
set clipboard+=unnamed

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

map <F5> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" NumberToggle toggles between relative and absolute line numbers
let g:relativemode = 1

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
    let g:relativemode = 0
  else
    set nonumber
    set relativenumber
    let g:relativemode = 1
  endif
endfunc

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

" Set correct syntax highlighting
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
au BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.txt call s:setupWrapping()
au BufRead,BufNewFile *.hamlc set ft=haml
au BufNewFile,BufRead *.rabl setf ruby

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Use modeline overrides
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
