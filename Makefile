.PHONY: all dotfiles activate

all: dotfiles activate

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp" -not -name ".travis.yml" -not -name ".irssi" -not -name ".gnupg" -not -name ".dotfiles"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \

activate:
	/bin/zsh -c "source $(HOME)/.zshrc" && ./setup-git.sh
