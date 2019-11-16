# set aliases
function fish_title
    true
end

alias sspnd="systemctl suspend"
alias dwn="systemctl shutdown"
alias temacs="emacsclient -t"
alias zathura="zathura --fork"
alias cfgadm="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias megatrans="/usr/bin/mega-transfers --show-syncs --limit=1000 | less"
alias dired='emacsclient -t -e "(dired  \"./\")"'
#alias xdired='emacsclient -c -e "(dired  \"./\")"'

# set environment
if status --is-login
   set -gx LANG en_US.utf8
   set -gx LC_ALL en_US.utf8
   set -gx LC_CTYPE en_US.utf8
   set -gx TERM "xterm-256color"

   set -gx PATH $PATH /home/dandy/bin /home/dandy/.cask/bin
   set -gx TERMINAL st
   set -gx BROWSER firefox
   set -gx EDITOR nano

   set -gx XDG_CONFIG_HOME /home/dandy/.config
   set -gx XDG_DATA_HOME /home/dandy/.local/share
   set -gx XDG_CACHE_HOME /home/dandy/.cache
#set -gx XDG_DATA_DIRS /home/dandy/.local
   set -gx XDG_DOCUMENTS_DIR="$HOME/docs"
   set -gx XDG_DOWNLOAD_DIR="$HOME/downloads"
   set -gx XDG_MUSIC_DIR="$HOME/music"
   set -gx XDG_PICTURES_DIR="$HOME/pics"
   set -gx XDG_VIDEOS_DIR="$HOME/vids"

### Java ###
    set -gx JAVA_HOME /usr/lib/jvm/default
    set -gx JDK_HOME /usr/lib/jvm/default

### Python ###
    set -gx WORKON_HOME $HOME/.local/share/virtualenvs
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
