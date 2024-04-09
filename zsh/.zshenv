#!/usr/bin/env zsh

skip_global_compinit=1
ZDOTDIR=$HOME/.config/zsh
PATH=$HOME/.local/bin/:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use node --silent
