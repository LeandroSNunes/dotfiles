# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Generate Totalpass hash for release
new-tag() {
  local folder=$(basename `pwd`)
  echo "$folder-`date '+%Y%m%d%H%M%S'`"
}

