#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='nvim'
alias nv='nvim'
alias rr='ranger'
alias xs='xset r rate 200 25 && echo "Zoom!"'
PS1='[\u@\h \W]\$ '
export EDITOR='nvim'
MANGOHUD=1
eval "$(oh-my-posh init bash --config ~/.poshthemes/takuya.omp.json)"
