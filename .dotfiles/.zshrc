export ZSH=$HOME/.oh-my-zsh
OMZ_PLUGIN_DIR=$ZSH/custom/plugins

ZSH_THEME="trekanten"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"

plugins=(
    asdf
    git
    rust
    ssh-agent
    z
    zsh-autosuggestions
    zsh-history-substring-search
    zsh-syntax-highlighting
)

fpath+=$OMZ_PLUGIN_DIR/zsh-completions/src

alias g='git'
alias y='yarn'

source $ZSH/oh-my-zsh.sh
