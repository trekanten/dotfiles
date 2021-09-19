branch_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo " $(git_current_branch)$(parse_git_dirty)$(git_prompt_ahead)$(git_prompt_behind)"
    else
        echo " X"
    fi
}

path() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        REPO=${$(git rev-parse --show-toplevel)##*/}
        PATH="${REPO}/$(git rev-parse --show-prefix)"
        echo " ${${PATH}%/}"
    else
        echo " %3~"
    fi
}

PROMPT='%K{white}%F{black}$(branch_info)%F{black}$(path) %(?:👍:👎) %f%k '

ZSH_THEME_GIT_PROMPT_DIRTY='%F{red}*'
ZSH_THEME_GIT_PROMPT_CLEAN=''
ZSH_THEME_GIT_PROMPT_AHEAD='%F{black}↑'
ZSH_THEME_GIT_PROMPT_BEHIND='%F{red}↓'
