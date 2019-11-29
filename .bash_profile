#######################################
#    Eigene .bash_profile settings    #
#######################################

# sourcees
if [ -f $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

### Java ###
export JAVA_HOME=/usr/lib/jvm/default
export JDK_HOME=/usr/lib/jvm/default

### Language ###
export LANG=en_US.utf8
export LC_ALL=en_US.utf8
export LC_CTYPE=en_US.utf8

### python ###
export WORKON_HOME=$HOME/.local/share/virtualenvs
export PYENV_ROOT=$HOME/.local/share/pyenv

### XDG ###
XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share
XDG_DATA_DIRS=$HOME/.local/share
XDG_CACHE_HOME=$HOME/.cache

XDG_DOCUMENTS_DIR="$HOME/docs"
XDG_DOWNLOAD_DIR="$HOME/downloads"
XDG_MUSIC_DIR="$HOME/music"
XDG_PICTURES_DIR="$HOME/pics"
XDG_VIDEOS_DIR="$HOME/vids"

# environment
export PATH=$PATH:$HOME/.cask/bin:$HOME/bin:$PYENV_ROOT/bin
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a emacs"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
