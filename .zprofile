echo -n 'Running .zprofile... '

# Load `~/.profile`
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:git*' formats "%{%F{yellow}%}(%b)"
# Allow dynamic prompt
setopt prompt_subst
# Update on render
function precmd() { vcs_info }

# Customize shell prompt
PROMPT='%{$fg[white]%}%n%{$fg[white]%}@%{$fg[green]%}∑%{$fg[white]%}%~:${vcs_info_msg_0_}%{$reset_color%} '

## FINISH OFF with some message and cleaning

echo -n "Done!"
clear
