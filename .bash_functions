# file: .bash_functions
# collection of useful shell functions.
# is sourced by .bash_profile

xdired() {
    if [ "$#" -eq 0 ]; then
	/usr/local/bin/emacsclient -c `pwd` & disown %-
    else
	/usr/local/bin/emacsclient -c $1 &  disown %-
    fi
}
