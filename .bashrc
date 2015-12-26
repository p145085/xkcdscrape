alias ls  = 'ls -h --color=auto --group-directories-first'
alias lsa = 'ls -a -h --color=auto --group-directories-first'
alias df  = 'df -h'
alias diskusage = 'du -S | sort -n -r | more'
#

PS1 = '\[\e[1;32m\][\u@\h \W]\$\[\e[0m\]'
# \u   -   User
# \h   -   Hostname
# \W   -   Working directory (#pwd)
#[user@hostname 'dir']$
#

#   -   Function for various ways of extracting a compressed file.
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xvjf $1 ;;
      *.tar.gz)   tar xvsz $1 ;;
      *.bz2)      bunzip2 $1  ;;
      *.rar)      unrar x $1  ;;
      *.gz)       gunzip $1   ;;
      *.tar)      tar xvf $1  ;;
      *.tbz2)     tar xvjf $1 ;;
      *.tgz)      tar xvzf $1 ;;
      *.zip)      unzip $1    ;;
      *.Z)        uncompress $1 ;;
      *.7z)       7z x $1     ;;
      *)          echo "I don't know how to extract '$1'!"  ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}
#

