# ~/.bash_profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

# run startx if its not running already
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
