#!/bin/bash

# Install oh-my-zsh
OMZ_DIR=$HOME/.oh-my-zsh
if [[ ! -d $OMZ_DIR ]]; then
  echo "oh-my-zsh: Installing"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "oh-my-zsh: Already installed"
fi

# Install asdf
ADSF_DIR=~/.asdf
if [[ ! -d $ADSF_DIR ]]; then
  echo "zsh plugin asdf: Installing"
  git clone https://github.com/asdf-vm/asdf.git $ADSF_DIR --branch v0.8.1
else
  echo "zsh plugin asdf: Already installed"
fi

# Install zsh-autosuggestions
ZSH_AUTO_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [[ ! -d $ZSH_AUTO_DIR ]]; then
  echo "zsh plugin zsh-autosuggestions: Installing"
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTO_DIR
else
  echo "zsh plugin zsh-autosuggestions: Already installed"
fi
