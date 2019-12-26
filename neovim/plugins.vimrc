" Colorscheme config
colorscheme neodark
let g:neodark#use_256color = 1 " default: 0

" Status line config
let g:lightline = {}
let g:lightline.colorscheme = 'wombat'

" ESLint config
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

" Vimtex config
let g:tex_flavor = 'latex'
