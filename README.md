# Dotfiles

My dotfiles! Some other config files as well.

## Setup

Setup occurs with `make`. It mostly creates symlinks from `$HOME` dir to files here. Should be idempotent so it _should_ not be dangerous to run twice 😇.

```shell
make
```

Remember to add new dotfiles you want to be symlinked to Makefile's `dotfiles` command.

### Homebrew dependencies

The `deps` commands needs [homebrew](https://brew.sh/) to be installed:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies from `Brewfile`:

```shell
make deps
```

Dump dependencies from current brew installation:

```shell
make deps/dump
```
