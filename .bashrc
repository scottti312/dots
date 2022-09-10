#!/bin/bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias rr='ranger'
alias code='codium'

# PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\h\[`tput sgr0`\]:$PWD\n\$ '
# PS1='[\u@\h \w]\$ '
PS1='\w \$ '

export PATH="$HOME/.local/bin/:$PATH";
export PATH="$HOME/.cargo/bin/:$PATH";
export EDITOR="lvim";
export VISUAL="lvim";
export CDPATH=".:/home/scott/Desktop/";
. "$HOME/.cargo/env"
