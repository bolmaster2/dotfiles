DOTFILES_DIR=${CURDIR}

.PHONY: setup
setup: dotfiles ignore_temprc

.PHONY: dotfiles
dotfiles: # Symlinks files to $HOME and some outside of it
# Symlink files to $HOME
	files=".aliases .path .profile .zshrc .bash_profile .gitconfig .gitignore .eslintrc.js .vimrc .temprc .functions"; \
	for file in $$files; do \
		ln -sf ${DOTFILES_DIR}/$$file $(HOME)/$$file; \
	done;
# Symlink files outside of $HOME
	ln -sf "${DOTFILES_DIR}/gpg.conf" "${HOME}/.gnupg/gpg.conf";
	ln -sf "${DOTFILES_DIR}/vscode-settings.json" "${HOME}/Library/Application Support/Code/User/settings.json";

.PHONY: ignore_temprc
ignore_temprc:
	git update-index --assume-unchanged .temprc

# Installs brew dependencies
.PHONY: deps
deps:
	brew bundle

# Dumps current brew packages into Brewfile
.PHONY: deps/dump
deps/dump:
	brew bundle dump -f
