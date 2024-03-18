source $HOME/.config/zsh/aliases

export PATH="$HOME/.local/bin/:$PATH"
export EDITOR="nvim"

zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
autoload -U edit-command-line

case $(uname) in
Darwin)
    # commands for macos go here
    source $HOME/.config/zsh/.zshrc-macos
    ;;
Linux)
    # commands for Linux go here
    source $HOME/.config/zsh/.zshrc-linux
    ;;
esac

# HISTORY https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh/273863#273863

HISTFILE="$HOME/.zsh_history"
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

bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
# Change history substring search colours (less 'flashy')
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,underline'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='underline'

# tab completion case insensitive
# https://superuser.com/questions/1092033/how-can-i-make-zsh-tab-completion-fix-capitalization-errors-for-directories-and
autoload -Uz compinit && compinit
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*' group-name ''

eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
