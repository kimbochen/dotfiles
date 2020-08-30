" Automatically install Vim Plug if it doesn't exist
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
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'itchyny/lightline.vim'

  " External features
  Plug 'sheerun/vim-polyglot'
call plug#end()


" Colorscheme configs
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai

" let g:neodark#use_256color = 1
" colorscheme neodark

" Status line configs
let g:lightline = {'colorscheme': 'sonokai'}
