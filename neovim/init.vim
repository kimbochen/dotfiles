call plug#begin('~/.local/share/nvim/plugged')

  " Linting plugins
  Plug 'w0rp/ale'

  " Syntax highlighting
  Plug 'sheerun/vim-polyglot'

  " Text editing plugins
  Plug 'machakann/vim-sandwich'
  Plug 'easymotion/vim-easymotion'

  " External feature plugins
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/fzf.vim'
  Plug 'SirVer/ultisnips'
  Plug 'ludovicchabant/vim-gutentags'

  " Completion plugins
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Use release branch
  " Plug 'xavierd/clang_complete'

  " Appearance plugins
  Plug 'KeitaNakamura/neodark.vim'
  Plug 'itchyny/lightline.vim'
 
call plug#end()

let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:python3_host_prog = system("which python3")[:-2]
let g:loaded_python_provider = 0
let g:loaded_node_provider = 0
let g:loaded_ruby_provider = 0

let g:ale_linters = {'python': ['flake8']}
let g:ale_lint_on_enter = 0

source ~/.config/nvim/general.vimrc
source ~/.config/nvim/plugins.vimrc
source ~/.config/nvim/mappings.vimrc
