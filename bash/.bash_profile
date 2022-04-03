#! /usr/bin/env bash

# Set path variable
export PATH="${HOME}/.cargo/bin:${PATH}"                       # Rust Cargo
export PATH="/usr/local/opt/make/libexec/gnubin:${PATH}"       # GNU make
export PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"  # GNU core utilities

# Miniforge
source /usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh

# Neovim main configuration directory
export XDG_CONFIG_HOME="$(dirname "$(readlink -f .bash_profile)")/../"

# Set text editor
export EDITOR="nvim"

# Set coloring for listings
export LS_COLORS="$(vivid generate snazzy)"

# Load .bashrc if it exists
if [[ -f "${HOME}"/.bashrc ]]; then source "${HOME}"/.bashrc; fi
