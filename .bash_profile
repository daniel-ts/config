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
