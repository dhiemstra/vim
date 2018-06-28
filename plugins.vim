call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'

" Handyness
Plug 'w0rp/ale'                                               " Linters
Plug 'airblade/vim-gitgutter'                                 " GIT gutter
Plug 'tpope/vim-eunuch'                                       " UNIX commands
Plug 'chrisbra/NrrwRgn'                                       " Narrow Region Plugin
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " AutoComplete framework

" Languages
Plug 'python-mode/python-mode', { 'branch': 'master' }

call plug#end()

" https://hackernoon.com/5-vim-plugins-i-cant-live-without-for-javascript-development-f7e98f98e8d5
" https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
"
" https://github.com/tpope/vim-surround
" https://github.com/scrooloose/nerdtree
