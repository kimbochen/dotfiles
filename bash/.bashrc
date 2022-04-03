#! /usr/bin/env bash

# set -o nounset  # Checks for uninitialized environment variables in scripts.
set -o emacs    # Set command editing shortcuts to Emacs.

alias rm="rm -i"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias tree="tree --dirsfirst -L 2"
alias vim="nvim"

alias ls="ls --color=auto --group-directories-first -X"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ls -lhA"
alias sl="ls"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias pyenv='source .venv/bin/activate'

WORK_DIR="\[\e[01;38;5;004m\]\w\[\e[00m\]"
DATE_TIME="\[\e[00;38;5;002m\][\D{%a %H:%M}]\[\e[00m\]"
PS1="$DATE_TIME $WORK_DIR\$ "

BASH_COMP="/usr/local/etc/profile.d/bash_completion.sh"
[[ -r "${BASH_COMP}" ]] && . "${BASH_COMP}"
source /usr/local/etc/bash_completion.d/*.sh
