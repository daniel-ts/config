# set variables
set -gx PATH $PATH /home/dandy/bin /home/dandy/.cask/bin
set -gx TERMINAL st
set -gx BROWSER firefox
set -gx EDITOR nano

set -gx XDG_CONFIG_HOME /home/dandy/.config
set -gx XDG_DATA_HOME /home/dandy/.local/share
set -gx XDG_CACHE_HOME /home/dandy/.cache

# set aliases
alias sspnd="systemctl suspend"
alias dwn="systemctl shutdown"
alias nemacs="emacs --no-window-system"
alias stochb="cd /home/dandy/Documents/Bücher/Mathe/Stochastik"
alias 8sem="cd /home/dandy/Documents/studium/8.Sem/"
alias zathura="zathura --fork"
alias cfgadm="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"


# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

