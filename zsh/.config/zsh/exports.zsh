#-------------------------------------------------------
# My paths
#-------------------------------------------------------
add_paths() {
  for d in "$@"; do
    [[ -d "$d" && ! "$PATH" =~ (^|:)$d(:|$) ]] && PATH="$PATH:$d"
  done
}

add_paths ~/.bin ~/.scripts ~/.dmenu ~/.local/bin

# nb completions
fpath=(~/.zsh/completion $fpath)

#-------------------------------------------------------
# Exports
#-------------------------------------------------------
export MANPAGER='nvim +Man!'
export BROWSER='brave'
export TERMINAL='st'
export PATH="$PATH:/usr/lb/surfraw"
export PATH="$HOME/.local/share/npm/bin:$PATH"
export npm_config_cache="$HOME/.cache/npm"
