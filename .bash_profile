#!/bin/bash

echo -n 'Running .bash_profile... '

## COLORS / STYLE
# show git branch with colors in terminal
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="${GREEN}∑:${NO_COLOR}\w${YELLOW}\$(parse_git_branch)${NO_COLOR}\$ "
# \u: username
# \w: directory

clear
