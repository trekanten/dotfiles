branch_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo "$(git_current_branch)$(parse_git_dirty) $(git_prompt_ahead)$(git_prompt_behind)"
    else
        echo ""
    fi
}

path() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        REPO=${$(git rev-parse --show-toplevel)##*/}
        echo "${REPO}/$(git rev-parse --show-prefix)"
    else
        echo "%2~"
    fi
}

status() {
    echo '%(?:%{%F{cyan}%}:%{%F{red}%})➜ '
}

PROMPT='$(branch_info) $(path) $(status) %f'

ZSH_THEME_GIT_PROMPT_DIRTY='%{%F{yellow}%}*%f'
ZSH_THEME_GIT_PROMPT_CLEAN=''
ZSH_THEME_GIT_PROMPT_AHEAD='%{%F{yellow}%}↑%f'
ZSH_THEME_GIT_PROMPT_BEHIND='%{%F{red}%}↓%f'
