# file: .zprofile

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

# environment
export PATH=$PATH:$HOME/.cask/bin:$HOME/bin:$PYENV_ROOT/bin
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a emacs"
export SSH_AUTH_SOCK="/run/user/1000/ssh-agent.socket"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
