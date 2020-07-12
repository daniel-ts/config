#######################################
#    Eigene .bash_profile settings    #
#######################################

# sources
if [ -f $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

### startx on login on tty1, must be last call ###
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
