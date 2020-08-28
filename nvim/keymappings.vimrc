let mapleader = " "

" Fast saving
nmap <leader>w :w!<cr>

" Disable highlight
map <silent> <leader><cr> :noh<cr>
"

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move between tabs
map <leader><Tab>   :tabnext<CR>
map <leader><S-Tab> :tabprevious<CR>

" Scrolling other windows
map <leader>e <C-w>w5<C-e><C-w>w
map <leader>y <C-w>w5<C-y><C-w>w

" Remap 0 to first non-blank character
noremap 0 ^
noremap ^ 0
