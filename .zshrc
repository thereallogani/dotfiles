# Path to your oh-my-zsh installation.
export ZSH=/users/pohara3-gtri/.oh-my-zsh

ZSH_THEME="clean"
DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

setopt APPEND_HISTORY
# Aliases
alias ll='ls -alF'
alias lsa='ls -A'
alias l='ls -CF'
alias tmux='tmux -2'
alias cdgo='cd /users/pohara3-gtri/code/go/src'
alias anyconnect='/opt/cisco/anyconnect/bin/vpnui'
alias sl='ls'

bindkey -M menuselect '^M' .accept-line
