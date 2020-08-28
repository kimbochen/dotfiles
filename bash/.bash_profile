#! /usr/bin/env bash

# Load .bashrc if it exists
if [[ -f "${HOME}"/.bashrc ]]; then source "${HOME}"/.bashrc; fi

# Set path variable
CORE_UTILS_PATH="/usr/local/opt/coreutils/libexec/gnubin"  # GNU core utilities
MAKE_PATH="/usr/local/opt/make/libexec/gnubin"             # GNU make
CARGO_PATH="${HOME}/.cargo/bin"                            # Rust cargo
export PATH="${CORE_UTILS_PATH}:${MAKE_PATH}:${CARGO_PATH}${PATH:+:${PATH}}"

# Set text editor
export EDITOR="nvim"

# Neovim main configuration directory
export XDG_CONFIG_HOME="$(dirname "$(readlink -f .bash_profile)")/../"

# Set coloring for listings
export CLICOLOR=1
export LS_COLORS="$(vivid generate snazzy)"
export GREP_OPTIONS="--color=auto"
