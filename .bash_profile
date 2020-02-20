PS1="\D{%H:%M} \w \$ "

alias rm="rm -i"
alias vim="nvim"
alias bash="/usr/local/bin/bash"

set -o emacs
export EDITOR="nvim"

# Set coloring for listings
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set GitHub API token for homebrew
export HOMEBREW_GITHUB_API_TOKEN=0d2667a380dfd6eaf6df322bbf94e6aaa83d5aea

# Ensure user-installed binaries take precedence
export PATH="$PATH:/usr/local/bin"

# Set PATH for make
export PATH="$PATH:/usr/local/opt/make/libexec/gnubin"

# Set PATH for sbin
export PATH="$PATH:/usr/local/sbin"

# Update all Python packages using pip3
pip_update()
{
    pip3 list --outdated --format=freeze | \
    grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
}

# Create a Python virtual environment in the current folder
create_pyvenv()
{
    echo "Creating Python virtual environment..."

    if python3 -m venv --prompt $(basename $PWD) .venv ; then
        if .venv/bin/pip install --upgrade pip pynvim ; then
            echo "Added Neovim support packages."
        else
            echo "Failed to install packages."
        fi

        echo "Virtual environment \"$(basename $PWD)\" created."
    else
        echo "Setup failed."
    fi
}

# Activate the Python virtual environment in the current folder
activate_pyvenv()
{
    echo "Activating Python virtual environment..."

    if ! source .venv/bin/activate ; then
        echo "There is no Python virtual environment in this folder."
    fi
}

reload_bash()
{
    if source ~/.bash_profile ; then
        echo "Reloading complete."
    else
        echo "Reloading failed."
    fi
}

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Initialize python kernel for jupyter notebook with pipenv
# init_pyenv() {
#    echo "Setting up pipenv environment"
#    pipenv install --three
#    echo "Installing ipython kernel"
#    pipenv install --dev ipykernel
#    # get name of environment and remove checksum for pretty name
#    venv_name=$(basename -- $(pipenv --venv))
#    venv_prettyname=$(echo $venv_name | cut -d '-' -f 1)
#    echo "Adding ipython kernel to list of jupyter kernels"
#    $(pipenv --py) -m ipykernel install --user --name $venv_name \
#    --display-name "Python3 ($venv_prettyname)"
# }
