# Dotfiles
In case my current computer breaks. Includes some dotfiles and package lists.  
Dotfiles are gathered here and symbolically linked to the `${HOME}` folder.

## Bash

### Contents
- `.bashrc`: Aliases, command line prompt style, and some behavior configurations.
- `.bash_profile`: Environment variables.
- `.inputrc`: Enables case-insensitive commands.

### Setup
- In the `dotfiles` folder, execute these commands:
  - `ln -s "${PWD}/bash/.bashrc" "${HOME}/.bashrc"`
  - `ln -s "${PWD}/bash/.bash_profile" "${HOME}/.bash_profile"`
  - `ln -s "${PWD}/bash/.inputrc" "${HOME}/.inputrc"`
- Install [vivid](https://github.com/sharkdp/vivid):
  - Download binary builds from [release page](https://github.com/sharkdp/vivid/releases).
  - Move folder `vivid` under `share` to `${HOME}/.config`.
  - Add `vivid` to `${PATH}`.

## Homebrew: Brewfile

### Update
- `brew bundle dump -gf`: Dump list of packages to `.Brewfile`.
- `brew bundle cleanup -g`: Uninstall packages that are not in `.Brewfile`.

### Setup
- `brew bundle`: Install packages according to `Brewfile`.
- `ln -s "${PWD}/homebrew/Brewfile" "${HOME}/.Brewfile"`

## Neovim

### Contents
- `init.vim`, `*.vimrc`: Configurations of NeoVim.
- `autoload`: Directory which contains the plugin manager.

### Setup
- Modify `python3_host_prog` in file `init.vim` to available Python binaries.
- Simply launch NeoVim to download plugins and reload.

## Git

### Contents
- `.gitconfig`
- `.gitignore_global`

### Setup
- `ln -s "${PWD}/git/.gitconfig" "${HOME}/.gitconfig"`
- `ln -s "${PWD}/git/.gitignore_global" "${HOME}/.gitignore_global"`

## Tmux
- `ln -s "${PWD}/tmux/.tmux.conf" "${HOME}/.tmux.conf"
