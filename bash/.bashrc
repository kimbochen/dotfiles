#! /usr/bin/env bash

# Bash settings
set -o emacs    # Set command editing shortcuts to Emacs.

# Aliases
alias rm="rm -i"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias tree="tree --dirsfirst -L 2"
alias nv="nvidia-smi"
alias nvl='nvidia-smi -l 1 '  # Live update

alias ls="ls --color=auto --group-directories-first"
alias la="ls -A"
alias ll="ls -lh"
alias sl="ls"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Command line prompt
USER="\[\e[1;32m\]\u@\h\[\e[00m\]"
WORK_DIR="\[\e[1;34m\]\w\[\e[00m\]"
export PS1="$USER:$WORK_DIR\$ "

# Enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Miniconda
source /home/kimbo/.miniconda/etc/profile.d/conda.sh
