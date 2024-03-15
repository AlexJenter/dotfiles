source $HOME/.config/zsh/aliases

export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin/:$PATH"	
export EDITOR="nvim"

zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
autoload -U edit-command-line

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# Change history substring search colours (less 'flashy')
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,underline'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='underline'


# tab completion case insensitive
# https://superuser.com/questions/1092033/how-can-i-make-zsh-tab-completion-fix-capitalization-errors-for-directories-and
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
