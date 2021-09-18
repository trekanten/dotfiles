#!/bin/bash

# Install oh-my-zsh
OMZ_DIR=$HOME/.oh-my-zsh
if [[ ! -d $OMZ_DIR ]]; then
  echo "oh-my-zsh: installing"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "oh-my-zsh: already installed"
fi

# Add theme to oh-my-zsh folder
echo "installing 'trekanten' omz theme"
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
THEME=trekanten.zsh-theme
rm -rf $OMZ_DIR/themes/$THEME
ln -s $THIS_DIR/$THEME $OMZ_DIR/themes/$THEME

# Install asdf
ADSF_DIR=~/.asdf
if [[ ! -d $ADSF_DIR ]]; then
  echo "zsh plugin asdf: installing"
  git clone https://github.com/asdf-vm/asdf.git $ADSF_DIR --branch v0.8.1
else
  echo "zsh plugin asdf: already installed"
fi

# Install zsh-autosuggestions
ZSH_AUTO_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [[ ! -d $ZSH_AUTO_DIR ]]; then
  echo "zsh plugin zsh-autosuggestions: installing"
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTO_DIR
else
  echo "zsh plugin zsh-autosuggestions: already installed"
fi
