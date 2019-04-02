#!/usr/bin/zsh

git clone --recursive https://github.com/thereallogani/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
rm ~/.zshrc
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
