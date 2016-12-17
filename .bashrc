#!/bin/bash


export EDITOR=vim

#file for history save
export HISTFILE=~/.bash_history
#max history file size
export HISTFILESIZE=500000
#max history size in rows
export HISTSIZE=500000



export HISTIGNORE="ls:cd:sudo:history"

export HISTCONTROL=ignoreboth
shopt -s histappend
#save every terminal window to ONE file
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r;"

#something more vith ls:
alias ll='ls -laX --group-directories-first'
alias ls='ls --group-directories-first --color=auto'



#bind '"\e[A": history-search-backward'
#bind '"\e[B": history-search-forward'

source /usr/local/cli/startup.sh
export APPLICATION_ENV=local
