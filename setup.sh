#!/bin/bash

# Setup zsh
echo "Setting up zsh"
source ./setup-zsh.sh

# Add symlinks dotfiles
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
DOT_FILES=(.gitconfig .zshrc)

echo "Adding symlinks to dotfiles:"
for DOT_FILE in "${DOT_FILES[@]}"; do
  rm -rf $HOME/$DOT_FILE
  ln -s $THIS_DIR/$DOT_FILE $HOME/$DOT_FILE
  echo "    $HOME/$DOT_FILE -> $THIS_DIR/$DOT_FILE"
done

# Message
echo "Installation done"
echo "To set zsh as default shell, run: $ chsh -s $(which zsh)"
