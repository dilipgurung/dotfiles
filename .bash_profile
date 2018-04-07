# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,aliases,functions,extra,exports}; do
	[[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file
