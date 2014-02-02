######### RVM ###########
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.rvm/bin

######### RUBI GC ###########

export RUBY_GC_MALLOC_LIMIT=90000000
export RUBY_FREE_MIN=200000

######### VIM ###########
export EDITOR=vim PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

######### CURL ###########
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

######### GIT ###########
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

######### MYSQL ###########
export PATH="/usr/local/mysql/bin:$PATH"

######### ALIASES ###########

alias ..="cd .."
alias la="ls -lah"
alias pa="ps aux"

######### GREP ###########

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;37'
alias grep='grep --color=auto' # Always highlight grep search term

######### OCULTA COMANDOS INICIADOS COM ESPACO NO HISTORICO ###########
export HISTCONTROL=ignorespace


 #If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Make bash check its window size after a process completes
shopt -s checkwinsize

# LS COLORS
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# Everything else is green...
# 0 - Normal
# 1 - Bold
# 2 -
function prompt {
  local BLACK="\[\033[0;30m\]"
  local RED="\[\033[0;31m\]"
  local GREEN="\[\033[0;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local BLUE="\[\033[0;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local CYAN="\[\033[0;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  #export PS1="${WHITE}\u${RED}@${PURPLE}\h ${CYAN}\w ${WHITE}\$(parse_git_branch) ${YELLOW}\n$ \[\e[m\]\[\e[m\]"
  export PS1="${PURPLE}\h ${CYAN}\w ${WHITE}\$(parse_git_branch) ${YELLOW}\n$ \[\e[m\]\[\e[m\]"
}
prompt
