# dotfiles
My Dotfiles

##### To install, run

	make

##### To customize:

Save env vars in a `.extra` file, that looks something like this:

	###
	### Git credentials
	###

	GIT_AUTHOR_NAME="Your Name"
	GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
	git config --global user.name "$GIT_AUTHOR_NAME"
	GIT_AUTHOR_EMAIL="email@you.com"
	GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
	git config --global user.email "$GIT_AUTHOR_EMAIL"
	GH_USER="nickname"
	git config --global github.user "$GH_USER"
