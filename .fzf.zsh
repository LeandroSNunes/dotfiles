# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/leandronunes/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/leandronunes/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/leandronunes/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/leandronunes/.fzf/shell/key-bindings.zsh"

