#!/usr/bin/env zsh

skip_global_compinit=1
ZDOTDIR=$HOME/.config/zsh
PATH=$HOME/.local/bin/:$PATH
PATH=$HOME/.composer/vendor/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                                                                 # This loads nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
nvm use node --silent

# Vite+ bin (https://viteplus.dev)
[ -s "$HOME/.vite-plus/env" ] && . "$HOME/.vite-plus/env"

export PATH="$HOME/.config/composer/vendor/bin/:$PATH"
