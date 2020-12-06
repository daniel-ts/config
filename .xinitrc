#!/bin/sh

# file sources
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# environment variables
export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
	[ -x "$f" ] && . "$f"
    done
    unset f
fi

### gnome keyring daemon with ssh support
### should be already started by PAM
### keyring should already be unlocked by PAM
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

#feh --bg-center /home/dandy/pics/Wallpapers/synthwave/neon/neon-sunset.jpg
if [ "$XDG_VTNR" -eq 1 ]; then
    nitrogen --set-centered --restore
    conky -p 1 > /dev/null
    exec i3 -V 2>&1 > ~/.config/i3/log
elif [ "$XDG_VTNR" -eq 2 ]; then
    exec emacsclient --create-frame
fi
