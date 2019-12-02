# Dotfiles

My dotfiles! Some other config files as well.

## Setup

I create symlinks from my `$HOME` directory to this repository. Usually you need to delete the files you are symlinking if they are auto-created, e.g., do:

```shell
rm "$HOME/.profile" && ln -s "$DOTFILES_DIR/.profile" "$HOME/.profile"
```

Just make sure you don't delete something you didn't save 🙈...

```shell
DOTFILES_DIR="/Users/joel/dev/dotfiles"

# TODO: Loop through array
ln -s "$DOTFILES_DIR/.profile" "$HOME/.profile"
ln -s "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -s "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
ln -s "$DOTFILES_DIR/.gitignore" "$HOME/.gitignore"
ln -s "$DOTFILES_DIR/.eslintrc.js" "$HOME/.eslintrc.js"
ln -s "$DOTFILES_DIR/gpg.conf" "$HOME/.gnupg/gpg.conf"
ln -s "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
ln -s "$DOTFILES_DIR/.temprc" "$HOME/.temprc"
ln -s "$DOTFILES_DIR/vscode-settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
```

To ignore changes to `.temprc` run

```shell
git update-index --assume-unchanged .temprc
```
