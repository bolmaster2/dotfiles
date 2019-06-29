# Dotfiles

My dotfiles! Some other config files as well.

## Setup

I create symlinks from my `$HOME` directory to this repository. Like this:

```shell
DOTFILES_DIR="/Users/joel/dev/dotfiles"

# TODO: Loop through array
ln -s "$DOTFILES_DIR/.profile" "$HOME/.profile"
ln -s "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -s "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
ln -s "$DOTFILES_DIR/.gitignore" "$HOME/.gitignore"
ln -s "$DOTFILES_DIR/.eslintrc.js" "$HOME/.eslintrc.js"
```
