## ALIASES
alias be="bundle exec "
alias gut="git"
alias gti="git"
alias ll="ls -lha"
alias lsort="echo -n '// Sorted on latest modified (add -RW for recursive or -f to unsort): ' && pwd && ls -lhatTF"

# Sets color on the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

## LOADING
# (`-s` is checking if file exists), check: http://mywiki.wooledge.org/BashGuide/TestsAndConditionals#line-257

# Set terminal language, check: https://stackoverflow.com/questions/11540815/how-to-change-the-language-of-my-git
export LANG="en_US.UTF-8"

# git tab completion
[ -s ~/.git-completion.bash ] && source ~/.git-completion.bash

# Load NVM
# NOTE: This is slow 😬
echo -n 'Waiting for nvm.sh... '
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
echo '💥'
# Load AVN, which changes node version when changing dir: https://github.com/wbyoung/avn
# [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"

# rbenv init
eval "$(rbenv init -)"

## GOlang
export GOPATH=$HOME/go

## PATH MODIFICATIONS 🧐

export PATH="/usr/local/sbin:$PATH"

# Curl ftw
export PATH="/usr/local/opt/curl/bin:$PATH"

# Global node modules
export PATH="$HOME/node_modules/.bin:$PATH"

# Global yarn and global yarn modules,
# BEWARE: those will come before npm's node_modules in `./node_modules/.` :point_up:
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Cointains `pip` version 3 but not the `python` binary
# export PATH="$HOME/Library/Python/3.6/bin/:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

# OpenSSL > macos modified one
export PATH="/usr/local/opt/openssl/bin:$PATH"

# My own bins, first! 😎
export PATH="$HOME/bin:$PATH"
