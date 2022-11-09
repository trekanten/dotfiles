#!/bin/bash

# Setup zsh
echo -e "### Setting up zsh ###"
source ./setup-zsh.sh

# Add symlinks dotfiles
DOT_FILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)/.dotfiles"
DOT_FILES=(
    .gitconfig
    .tool-versions
    .zprofile
    .zshrc
)
echo -e "\n### Adding symlinks to dotfiles ###"
for DOT_FILE in "${DOT_FILES[@]}"; do
    rm -rf $HOME/$DOT_FILE
    ln -s $DOT_FILES_DIR/$DOT_FILE $HOME/$DOT_FILE
    echo -e "$HOME/$DOT_FILE -> $DOT_FILES_DIR/$DOT_FILE"
done
