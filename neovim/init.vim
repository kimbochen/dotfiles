" Import configurations
source ~/.config/nvim/plugins.vimrc
source ~/.config/nvim/settings.vimrc
source ~/.config/nvim/keymappings.vimrc

" Define host program paths
let g:python3_host_prog = system("which python3")[:-2]
let g:node_host_prog = '/Users/kimbochen/.nvim/node_modules/neovim'
let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0

