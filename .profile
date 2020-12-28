## ALIASES
source "$HOME/.aliases"

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

# rbenv init
eval "$(rbenv init -)"

# Golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

## PATH MODIFICATIONS 🧐
source "$HOME/.path"

# Helper functions
source "$HOME/.functions"

# Run temporary stuff
[ -s "$HOME/.temprc" ] && source "$HOME/.temprc"
