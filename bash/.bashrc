#! /usr/bin/env bash

# Bash settings
set -o emacs    # Set command editing shortcuts to Emacs.

# Aliases
alias rm="rm -i"
alias mv="mv -i"
alias mkdir="mkdir -p"

alias nv="nvidia-smi"
alias nvl='nvidia-smi -l 1 '  # Live update

alias tree="tree --dirsfirst -L 2"
alias treel="tree -pu"

alias ls="ls --color=auto --group-directories-first -X"
alias la="ls -A"
alias ll="ls -lh"
alias sl="ls"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Command line prompt
USER="\[\e[00;38;5;002m\]\u@\h\[\e[00m\]"
WORK_DIR="\[\e[01;38;5;004m\]\w\[\e[00m\]"
PS1="$USER:$WORK_DIR\$ "

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
source /home/kimbo/.miniconda/etc/profile.d/bash_completion.sh

# Color picker: Uncomment this when you need to pick colors for prompt.
# function colorgrid( )
# {
#     iter=16
#     while [ $iter -lt 52 ]
#     do
#         second=$[$iter+36]
#         third=$[$second+36]
#         four=$[$third+36]
#         five=$[$four+36]
#         six=$[$five+36]
#         seven=$[$six+36]
#         if [ $seven -gt 250 ];then seven=$[$seven-251]; fi
# 
#         echo -en "\033[38;5;$(echo $iter)m█ "
#         printf "%03d" $iter
#         echo -en "   \033[38;5;$(echo $second)m█ "
#         printf "%03d" $second
#         echo -en "   \033[38;5;$(echo $third)m█ "
#         printf "%03d" $third
#         echo -en "   \033[38;5;$(echo $four)m█ "
#         printf "%03d" $four
#         echo -en "   \033[38;5;$(echo $five)m█ "
#         printf "%03d" $five
#         echo -en "   \033[38;5;$(echo $six)m█ "
#         printf "%03d" $six
#         echo -en "   \033[38;5;$(echo $seven)m█ "
#         printf "%03d" $seven
# 
#         iter=$[$iter+1]
#         printf '\r\n'
#     done
# }
