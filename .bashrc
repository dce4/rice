# ~/.bashrc

HISTSIZE=-1
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# include color settings
if [ -f $HOME/.bash_colors ]; then
	. $HOME/.bash_colors
fi

xset r rate 300 50

