PS1="\D{%H:%M} \w \$ "

alias rm="rm -i"
alias nvm="nvim"
alias bash="/usr/local/bin/bash"

set -o emacs
export EDITOR="nvim"

# Setting coloring for listings
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Ensure user-installed binaries take precedence
export PATH="$PATH:/usr/local/bin"

# Setting PATH for Python 3.7
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.7/bin"

# Setting PATH for make
export PATH="$PATH:/usr/local/opt/make/libexec/gnubin"

# Setting PATH for sqlite
export PATH="$PATH:/usr/local/opt/sqlite/bin"

# Setting PATH for sbin
export PATH="$PATH:/usr/local/sbin"

# Initialize python kernel for jupyter notebook
init_pyenv() {
   echo "Setting up pipenv environment"
   pipenv install --three
   echo "Installing ipython kernel"
   pipenv install --dev ipykernel
   # get name of environment and remove checksum for pretty name
   venv_name=$(basename -- $(pipenv --venv))
   venv_prettyname=$(echo $venv_name | cut -d '-' -f 1)
   echo "Adding ipython kernel to list of jupyter kernels"
   $(pipenv --py) -m ipykernel install --user --name $venv_name \
   --display-name "Python3 ($venv_prettyname)"
}

# Update all Python packages using pip3
pip_update() {
    pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
}

# Settings for pipenv
# export PIPENV_VENV_IN_PROJECT=1

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

export PATH="$HOME/.poetry/bin:$PATH"
