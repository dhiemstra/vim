call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
Plug 'python-mode/python-mode', { 'branch': 'master' }

call plug#end()
