source $HOME/.config/zsh/aliases.zsh

export EDITOR=nvim
export VISUAL=nvim

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  KEY_UP='\eOA'
  KEY_DOWN='\eOB'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  KEY_UP='^[[A'
  KEY_DOWN='^[[B'
  export SSH_AUTH_SOCK="/Applications/1Password.app/Contents/MacOS/op-ssh-sign"
  export PATH="/opt/homebrew/bin:$PATH"
else
fi

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_CACHE=~/.cache/starship

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

plug "zsh-users/zsh-history-substring-search"
bindkey $KEY_UP history-substring-search-up # or '\eOA'
bindkey $KEY_DOWN history-substring-search-down # or '\eOB'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,underline'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=red,underline'
[ -f "${XDG_DATA_HOME:-$HOME/.cache}/zsh/history" ] && mkdir -p $HOME/.cache/zsh
export HISTFILE="$HOME/.cache/zsh/history"

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# HISTORY https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh/273863#273863
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY            # Don't execute immediately upon history expansion.
setopt HIST_BEEP              # Beep when accessing nonexistent history.

# If you want a special location for the compdump, and only one location, you need to skip_global_compinit in your .zshenv
# https://superuser.com/questions/1785213/change-the-default-location-of-zsh-completion-cache-files-for-macos/1824845#1824845
autoload -Uz compinit
compinit -d $HOME/.cache/zsh/compdump
