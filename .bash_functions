# -*- mode: Shell-script -*-

# file: .bash_functions
# collection of useful shell functions.
# is sourced by .bash_profile

xdired() {
    if [ "$#" -eq 0 ]; then
	/usr/local/bin/emacsclient -c `pwd` & disown %-
    else
	/usr/local/bin/emacsclient -c $1 &  disown %-
    fi
    return 0
}

mount-blockdev() {
    CHOICE=$(lsblk -lin -o HOTPLUG,PATH,LABEL,TYPE,MOUNTPOINT \
		 | awk '!/disk/ && $1 !~ "0" {print $2, $3}' \
		 | dmenu -i -c -l 15 -fn 'monospace-18' \
		 | awk '{print $1}')

    if [ -n "${CHOICE}" ]; then
	MNT=$(udisksctl mount -b $CHOICE 2> /dev/null)
	if [ $? -eq 0 ]; then
	    notify-send "${MNT}"
	else
	    notify-send "could not mount ${CHOICE}"
	fi
    fi
    return 0
}

unmount-blockdev() {
    CHOICE=$(lsblk -lin -o PATH,HOTPLUG,MOUNTPOINT \
		 | awk '$2 ~ "1" {if ($3 != "") print $1,$3}' \
		 | dmenu -i -c -l 15 -fn 'monospace-18' \
		 | awk '{print $1}')

    if [ -n "${CHOICE}" ]; then
	UMNT=$(udisksctl unmount -b ${CHOICE} 2> /dev/null)
	if [ $? -eq 0 ]; then
	    notify-send "${UMNT}"
	else
	    notify-send "could not unmount ${CHOICE}"
	fi
    fi

    return 0
}


prepare-vbox(){
    sudo modprobe vboxdrv
    sudo modprobe vboxnetadp
    sudo modprobe vboxnetflt
    sudo modprobe vboxpci
}
