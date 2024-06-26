#!/usr/bin/env bash

alias l="ls -Glah"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias vim="nvim"
alias vi="nvim"
alias i="nvim"

[[ "$OSTYPE" == "linux-gnu"* ]] && alias pbcopy="xclip -selection c"
[[ "$OSTYPE" == "linux-gnu"* ]] && alias pbpaste="xclip -selection clipboartd -o"

function take {
  mkdir -p $1
  cd $1
}
