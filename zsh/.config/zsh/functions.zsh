
#-------------------------------------------------------
# ext = EXtractor for all kinds of archives
# usage: ex <file>
#-------------------------------------------------------
ext () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
	  *.deb)       ar x $1      ;;
	  *.tar.xz)    tar xf $1   ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#-------------------------------------------------------
# Show paths in a columne
#-------------------------------------------------------
pathlist() {
  echo $PATH | tr ':' '\n'
}

#-------------------------------------------------------
# Get a preview of flles to edit
#-------------------------------------------------------
vf() { fzf --preview "bat --color=always {}" | xargs -r -I % $EDITOR % ;}

#-------------------------------------------------------
# Get a cpu usage info
#-------------------------------------------------------
function cpu_usage() {
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
}

#-------------------------------------------------------
# Get a memory usage info
#-------------------------------------------------------
function mem_usage() {
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
}

#-------------------------------------------------------
# Open yazi file manager in the current directory
#-------------------------------------------------------
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
