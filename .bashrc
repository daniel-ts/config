#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s globstar


alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls --color'
LS_COLORS='di=1;34:ln=32:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=1;33:*.pdf=35:*.epub=35:*.tar=31:*.tar.gz=31:*tar.xz=31:*.zip=31'
export LS_COLORS

PS1='\[\033[01;31m\][\[\033[00m\]\u@\h \W\[\033[01;31m\]]\[\033[00m\]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

###################
####    OWN    ####
###################

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
