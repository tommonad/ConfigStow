#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/* ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Default programs:
export EDITOR="nvim"
export VISUAL="nvim"
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="st"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PERL_CPANM_HOME="$XDG_CACHE_HOME/cpanm"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"


xrandr --output DP-1 --mode 1920x1080 --rate 60 --primary --output DVI-I-1 --mode 1920x1080 --rate 60 --right-of DP-1 &
/home/tom/.config/suckless/dwm-bar/dwm_bar.sh &

# Random wallpapers
feh --bg-scale --randomize ~/Wallpapers/* &
[[ -f ~/.config/X11/xmodmap ]] && xmodmap ~/.config/X11/xmodmap 
xset r rate 180 50 &
xset -dpms &
# start some nice programs
picom  &
sxhkd -m 1 &

# Restart dwm
while true; do
	dwm >/dev/null 2<&1
done

exec dwm
