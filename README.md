# Dotfiles

My dotfiles! Some other config files as well.

## Setup

I create symlinks from my `$HOME` directory to this repository. Like this:

```shell
$DOTFILES_DIR="~/dev/dotfiles"

# TODO: Loop through array
ln -s "$DOTFILES_DIR/.profile" ~/.profile
ln -s "$DOTFILES_DIR/.zprofile" ~/.zprofile
ln -s "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
ln -s "$DOTFILES_DIR/.gitconfig" ~/.gitconfig
ln -s "$DOTFILES_DIR/.gitignore" ~/.gitignore
ln -s "$DOTFILES_DIR/.eslintrc.js" ~/.eslintrc.js
```
