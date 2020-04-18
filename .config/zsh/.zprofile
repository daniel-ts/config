# file: .zprofile

# source .profile on login
if [ -f "$HOME/.profile" ]; then
    source $HOME/.profile
fi

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
