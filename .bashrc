#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Adiciona os binarios do coreutils para não precisar usar os programas com o prefixo 'g'. ex. gtac
# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
