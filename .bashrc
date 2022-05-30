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
alias rgb='sudo modprobe i2c-dev && sudo modprobe i2c-i801'
PS1='[\u@\h \W]\$ '
export EDITOR='nvim'
MANGOHUD=1
eval "$(oh-my-posh init bash --config ~/.poshthemes/takuya.omp.json)"

# Created by `pipx` on 2022-04-19 23:10:20
export PATH="$PATH:/home/scott/.local/bin"
