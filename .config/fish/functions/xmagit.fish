function xmagit --description 'Opens an emacsclient in the terminal with a magit buffer open for the git base directory.'
	/usr/local/bin/emacsclient -c \
	-e (printf "(magit-status-setup-buffer \"%s\")" (git rev-parse --show-toplevel)) &; disown
end
