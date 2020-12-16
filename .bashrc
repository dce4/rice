# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# start color settings
export PS1="\u\[$(tput bold)\]@\H\[$(tput sgr0)\] [\w] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;196m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

export LESS=-R
alias ls='ls --color=auto'
alias ip='ip --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
#end color settings

xset r rate 300 50
alias l='ls -lah'
alias ":q"="exit"
alias vim='nvim'
HISTSIZE=-1

# Start tmux with each new terminal 
#[[ $TERM != "screen" ]] && exec tmux
