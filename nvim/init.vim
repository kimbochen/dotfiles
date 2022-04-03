" Import configurations
source $XDG_CONFIG_HOME/nvim/plugins.vimrc
source $XDG_CONFIG_HOME/nvim/keymappings.vimrc
source $XDG_CONFIG_HOME/nvim/settings.vimrc

" Set host program paths
let g:python3_host_prog = "/usr/local/Caskroom/miniforge/base/envs/neovim/bin/python"
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_node_provider = 0

autocmd BufNewFile *.cpp 0r $XDG_CONFIG_HOME/nvim/templates/skeleton.cpp
