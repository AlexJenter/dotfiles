#!/usr/bin/env bash

alias l="ls -Glah"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias vim="nvim"
alias vi="nvim"
alias i="nvim"

[ "command -v xclip" ] && alias pbcopy="xclip -selection c"
[ "command -v xclip" ] && alias pbpaste="xclip -selection clipboartd -o"

function take {
  mkdir -p $1
  cd $1
}
