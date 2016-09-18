# Path to your oh-my-zsh installation.
  export ZSH=/home/logan/.oh-my-zsh

ZSH_THEME="clean"

CASE_SENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Aliases
alias ll='ls -alF'
alias lsa='ls -A'
alias l='ls -CF'
alias tmux='tmux -2'
alias cdgo='cd /home/logan/code/go/src'
alias anyconnect='/opt/cisco/anyconnect/bin/vpnui'
alias sl='ls'
