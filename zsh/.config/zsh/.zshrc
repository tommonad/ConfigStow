#-------------------------------------------------------
# Source files
#-------------------------------------------------------
[[ -f $ZDOTDIR/aliases.zsh ]]   && source $ZDOTDIR/aliases.zsh
[[ -f $ZDOTDIR/functions.zsh ]] && source $ZDOTDIR/functions.zsh
[[ -f $ZDOTDIR/exports.zsh ]] && source $ZDOTDIR/exports.zsh
[[ -f $ZDOTDIR/prompt.zsh ]] && source $ZDOTDIR/prompt.zsh
[[ -f $ZDOTDIR/shortcut.zsh ]] && source $ZDOTDIR/shortcut.zsh

#-------------------------------------------------------
# History
#-------------------------------------------------------
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
setopt INC_APPEND_HISTORY      # save each command as you enter it
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
#-------------------------------------------------------
# Options
#-------------------------------------------------------
setopt autocd
setopt interactivecomments
setopt nobeep
setopt promptsubst

#-------------------------------------------------------
# Plugins
# Minimal, fast, no async bugs
#-------------------------------------------------------
# zsh-vim-mode clipboard integration (plugin)
ZVM_SYSTEM_CLIPBOARD_ENABLED=true

# Autosuggestions — SYNC mode (fast & stable)
ZSH_AUTOSUGGEST_USE_ASYNC=false
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Syntax highlighting — extremely fast version
source "$ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

# History substring search (optional)
source "$ZDOTDIR/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#-------------------------------------------------------
# FZF integration (fast)
#-------------------------------------------------------
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ]   && source /usr/share/fzf/completion.zsh

#-------------------------------------------------------
# Yazi
#-------------------------------------------------------
# Show indicator that the shell was spawned from ranger
if [ -n "$YAZI_LEVEL" ]; then export PS1="[yazi]$PS1"; fi

#-------------------------------------------------------
# Zsh-vi-mode
#-------------------------------------------------------
function zvm_config (){
  # Copy text from the cli with yy
  ZVM_SYSTEM_CLIPBOARD_ENABLED=true
}

source "$ZDOTDIR/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh"

