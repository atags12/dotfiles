#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
#HISTCONTROL=ignoreboth

# Bad PS1 that had wierd line wrapping. Add '\]' here:
#                                                V
#export PS1="\\[\033[01;35m\]\A\[\033[01;34m\] - $(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Better PS1, fixed by Alex on December 14, 2020
export PS1="\\[\033[01;35m\]\A\[\033[01;34m\] - \[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Alex's PS1
#export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\A\[\033[01;34m\]-\u@\h\[\033[00m\]:\[\033[01;31m\]\W\[\033[00m\]\$ '

#export PS1="\\[\033[01;35m\]\A\[\033[01;34m\] - $(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
#export PS1="[\[\e[0;32m\]\u\e[m]@[\[\e[0;31m\]\h\[\e[m\]]:\[\e[1;37m\]\w\[\e[m\] \$ "
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
echo "<SYSTEM>:"
echo "Remember, you should use go into tmux"
source $HOME/.scripts/Updatereminder.bash

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

alias :q=exit

eval $(thefuck --alias)
alias oops="fuck"
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
