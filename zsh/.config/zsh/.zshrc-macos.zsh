#!/usr/bin/env zsh

git config --file=$HOME/dotfiles/git/.config/git/config gpg.ssh.program "/Applications/1Password.app/Contents/MacOS/op-ssh-sign"

export PATH="/opt/homebrew/bin:$PATH"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down