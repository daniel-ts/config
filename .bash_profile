#######################################
#    Eigene .bash_profile settings    #
#######################################

# sources
if [ -f $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

### python ###
export WORKON_HOME=$HOME/.local/share/virtualenvs
export PYENV_ROOT=$HOME/.local/share/pyenv

### XDG ###
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

# environment
export PATH=$PATH:$HOME/.cask/bin:$HOME/bin:$PYENV_ROOT/bin
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a emacs"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
