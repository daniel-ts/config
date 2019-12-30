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
    choice=`lsblk -lin -o PATH,LABEL,TYPE,HOTPLUG,MOUNTPOINT \
        | grep -v 'disk' \
	| awk '/ 1 $/ { print $1, $2}' \
	| dmenu -i -c -l 15 \
	| awk '{print $1}'`\
	&& mntpoint=`udisksctl mount -b $choice`\
	&& notify-send "$mntpoint"
    return 0
}

unmount-blockdev() {
    # sollte MOUNTPOINT und RM (removable) haben
    choice= $(lsblk -lin -o MOUNTPOINT,PATH,HOTPLUG \
    		   | awk '/^\/.* 1$/ { print $1, $2 }' \
		   | dmenu -i -c -l 15 \
		   | awk '{ print $2 }') \
	&& msg=$(udisksctl unmount -b $choice) | notify-send -
    return 0
}
