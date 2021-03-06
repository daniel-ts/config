# -*- mode: shell-script -*-
# my aliases

alias sspnd="systemctl suspend"
alias dwn="systemctl shutdown"
alias cfgadm="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias temacs="emacsclient -t"
alias megatrans="/usr/bin/mega-transfers --show-syncs --limit=1000"
alias dired='emacsclient -t -e "(dired  \"./\")"'
alias magit='emacsclient -t -e "(magit  \"./\")"'
alias clip='xargs echo -n | xclip -i -selection clipboard'
alias xkcdpass='xkcdpass --delimiter "" --case capitalize'
alias aursync='sudo -u builder aur sync -d custom --noview'
alias ansdoc='ansible-doc'
