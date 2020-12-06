
### DISPLAY PHARAO ###
lolcat ~/.Xresources.d/pics/egypt.txt

### startx at login on tty1 ###
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && ( $XDG_VTNR -eq 1 || $XDG_VTNR -eq 2 ) ]]; then
    exec startx 2>&1 > ~/.startx.log
fi
