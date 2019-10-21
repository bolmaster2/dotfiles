## ALIASES
alias be="bundle exec "
alias gut="git"
alias gti="git"
alias ll="ls -lha"
alias lsort="echo -n '// Sorted on latest modified (add -RW for recursive or -f to unsort): ' && pwd && ls -lhatTF"

# Sets color on the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set terminal language, check: https://stackoverflow.com/questions/11540815/how-to-change-the-language-of-my-git
export LANG="en_US.UTF-8"

## LOADING
# (`-s` is checking if file exists), check: http://mywiki.wooledge.org/BashGuide/TestsAndConditionals#line-257

# git tab completion
[ -s "~/.git-completion.bash" ] && source "~/.git-completion.bash"

# Load NVM
# NOTE: This is slow 😬
# echo -n 'Waiting for nvm.sh... '
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh" --no-use
# echo 'nvm.sh done 💥'

# YMV (Yarn version manager :facepalm:)
export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# rbenv init
eval "$(rbenv init -)"

## Golang
export GOPATH="$HOME/go"

# Date helper function
# Usage:
# ```
# now
# // Show as UTC
# now -u
# ```
#
function now {
  date $1 +"%Y-%m-%d %T"
}

## PATH MODIFICATIONS 🧐

export PATH="/usr/local/sbin:$PATH"

# Curl from homebrew
# export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/curl-openssl@1.1/bin:$PATH"

# Global node modules
export PATH="$HOME/node_modules/.bin:$PATH"

# Global yarn and global yarn modules,
# BEWARE: those will come before npm's node_modules in `./node_modules/.` :point_up:
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Cointains `pip` version 3 but not the `python` binary
# export PATH="$HOME/Library/Python/3.6/bin/:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

# OpenSSL 1.1.1 from homebrew
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# My own bins, first! 😎
export PATH="$HOME/bin:$PATH"

# homebrew bin first!
export PATH="/usr/local/bin:$PATH"
