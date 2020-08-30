#! /usr/bin/env bash

# Set path variable
BIN_PATH="${HOME}/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
CONDA_PATH="${HOME}/.miniconda/bin"
CUDA_HOME="/usr/local/cuda-10.1/bin"
export PATH="${BIN_PATH}:${CUDA_HOME}:${CONDA_PATH}"

# CUDA devices
export CUDA_VISIBLE_DEVICES=0,1,2

# Set text editor
export EDITOR="vim"

# Set coloring for listings
export LS_COLORS="$(vivid generate snazzy)"

# Time format
export LC_TIME="en_US.UTF-8"

# Load .bashrc
source "${HOME}"/.bashrc
