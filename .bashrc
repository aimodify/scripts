#!/bin/bash


export EDITOR=vim

export HISTFILE=~/.bash_history
export HISTFILESIZE=500000
export HISTSIZE=500000
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:cd:sudo:history"

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r;"

alias ll='ls -laX --group-directories-first'
alias ls='ls --group-directories-first --color=auto'
