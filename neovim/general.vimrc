set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set autoindent
set smartindent
set number

set incsearch
set hlsearch

set ruler
set showmatch
set cmdheight=1

set autoread
set nobackup
set noswapfile
set nowritebackup

set t_Co=256
colorscheme neodark

set splitright
set splitbelow

set hidden
set shortmess+=c

syntax on

set showtabline=1
set laststatus=2
set noshowmode

set rtp+=/usr/local/opt/fzf

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab
