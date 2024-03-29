" Change leader map
" let mapleader = ','

" Press ,\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Type jj to exit insert mode quickly.
inoremap jk <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <c-s> :w<CR>
inoremap <c-s> <ESC>:w<CR>a
map <C-x> :ter <return>
vnoremap <C-c> "+y<ESC>
xnoremap <C-c> "+y
map <C-p> "+P

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <space>j :tabprevious<CR>
nnoremap <space>k :tabnext<CR>


