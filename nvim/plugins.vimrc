" Automaticalyy install Vim Plug if it doesn't exist
if isdirectory(expand("$HOME/.vim/autoload")) == 0
  silent !curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC | q
endif


" Install plugins with Vim Plug
call plug#begin("~/.vim-plugs")
  " Text editing
  Plug 'easymotion/vim-easymotion'
  Plug 'machakann/vim-sandwich'
  Plug 'SirVer/ultisnips'

  " Appearance
  Plug 'KeitaNakamura/neodark.vim'
  Plug 'itchyny/lightline.vim'

  " External features
  Plug 'sheerun/vim-polyglot'
call plug#end()


" Colorscheme configs
colorscheme neodark
let g:neodark#use_256color = 1 " default: 0

" Status line configs
let g:lightline = {}
let g:lightline.colorscheme = 'wombat'
