export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="simple"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"

plugins=(
    asdf
    cargo
    git
    rust
    ssh-agent
    z
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
