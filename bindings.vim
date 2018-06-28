inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" General bindings
map <Leader>w  :w<CR>
map <Leader>h  :nohl<CR>
map <Tab>      ==
map qq         :bp<CR>:bd #<CR>

" nmap <CR> o<Esc>
" imap ii <Esc>
" map <Leader>' :s/\'\(.*\)\'/\"\1\"<CR>:nohl<CR>

map <F5> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Switching between buffers with arrow keys
nmap <silent> <C-e>k :wincmd k<CR>
nmap <silent> <C-e>j :wincmd j<CR>
nmap <silent> <C-e>h :wincmd h<CR>
nmap <silent> <C-e>l :wincmd l<CR>

" map <C-k>      :wincmd j<CR>
" map <C-h>      :wincmd h<CR>
" map <C-l>      :wincmd l<CR>

" FZF - https://github.com/junegunn/fzf/blob/master/README-VIM.md
map <Leader>p  :FZF<CR>

" NERDTree
" map <Leader>nf :NERDTreeFind<CR>
" map <Leader>nf :NERDTreeFind<CR>
" map <Leader>nt :NERDTreeToggle<CR>
