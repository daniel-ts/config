# file: .profile
# one place to set general environment for POSIX-compliant shells
# bash and zsh source it by default

### python ###
export WORKON_HOME=$HOME/.local/share/virtualenvs
export PYENV_ROOT=$HOME/.local/share/pyenv

### XDG ###
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local
export XDG_DATA_DIRS=$HOME/.local/share:/usr/share
export XDG_CACHE_HOME=$HOME/.cache

export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pics"
export XDG_VIDEOS_DIR="$HOME/vids"

### environment
export PATH=$PATH:$HOME/bin:$PYENV_ROOT/bin
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t -a 'emacs -nw'"
export VISUAL="emacsclient -c -a emacs"
export SSH_AUTH_SOCK="/run/user/1000/ssh-agent.socket"

### other ###
