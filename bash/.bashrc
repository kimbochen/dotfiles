#! /usr/bin/env bash

set -o nounset  # Checks for uninitialized environment variables in scripts.
set -o emacs    # Set command editing shortcuts to Emacs.

alias rm="rm -i"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias tree="tree --dirsfirst"

alias vim="nvim"

alias ls="ls --color=auto --group-directories-first"
alias la="ls -A"
alias ll="ls -lh"
alias sl="ls"

PS1="[\u \W] \D{%a-%m-%d-%H-%M} \$ "
