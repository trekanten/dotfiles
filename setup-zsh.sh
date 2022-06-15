#!/bin/bash

OMZ_DIR=$HOME/.oh-my-zsh
OMZ_PLUGIN_DIR=$OMZ_DIR/custom/plugins
ADSF_DIR=~/.asdf

# Install oh-my-zsh
if [[ ! -d $OMZ_DIR ]]; then
  echo "oh-my-zsh: installing"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  echo "oh-my-zsh: installation done"
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
if [[ ! -d $ADSF_DIR ]]; then
  echo "zsh plugin asdf: installing"
  git clone https://github.com/asdf-vm/asdf.git $ADSF_DIR --branch v0.8.1
  echo "zsh plugin asdf: installation done"
else
  echo "zsh plugin asdf: already installed"
fi

# Install zsh-autosuggestions
ZSH_AUTO_DIR=${OMZ_PLUGIN_DIR}/zsh-autosuggestions
if [[ ! -d $ZSH_AUTO_DIR ]]; then
  echo "zsh plugin zsh-autosuggestions: installing"
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTO_DIR
  echo "zsh plugin zsh-autosuggestions: installation done"
else
  echo "zsh plugin zsh-autosuggestions: already installed"
fi

ZSH_SYN_DIR=${OMZ_PLUGIN_DIR}/zsh-syntax-highlighting
if [[ ! -d $ZSH_SYN_DIR ]]; then
  echo "zsh plugin zsh-syntax-highlighting: installing"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SYN_DIR
  echo "zsh plugin zsh-syntax-highlighting: installation done"
else
  echo "zsh plugin zsh-syntax-highlighting: already installed"
fi

ZSH_COMPLETIONS_DIR=${OMZ_PLUGIN_DIR}/zsh-completions
if [[ ! -d $ZSH_COMPLETIONS_DIR ]]; then
  echo "zsh plugin zsh-completions: installing"
  git clone https://github.com/zsh-users/zsh-completions $ZSH_COMPLETIONS_DIR
  echo "zsh plugin zsh-completions: installation done"
else
  echo "zsh plugin zsh-completions: already installed"
fi

ZSH_HISTORY_DIR=${OMZ_PLUGIN_DIR}/zsh-history-substring-search
if [[ ! -d $ZSH_HISTORY_DIR ]]; then
  echo "zsh plugin zsh-history-substring-search: installing"
  git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH_HISTORY_DIR
  echo "zsh plugin zsh-history-substring-search: installation done"
else
  echo "zsh plugin zsh-history-substring-search: already installed"
fi
