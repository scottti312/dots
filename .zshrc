# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/scott/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt walters

# End of lines added by compinstall
alias ls='ls --color=auto'
alias rr='ranger'
alias code='codium'

export PATH="$HOME/.local/bin/:$PATH";
export PATH="$HOME/.cargo/bin/:$PATH";
export EDITOR="lvim";
export VISUAL="lvim";
export CDPATH=".:/home/scott/Desktop/";
. "$HOME/.cargo/env"
