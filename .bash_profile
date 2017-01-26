# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,functions,path,extra,exports}; do
	[[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

# GIT prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}${MAGENTA}`__git_ps1 " on %s"`${WHITE}\r\n\[`set_prefix`\]${NORMAL}${WHITE} '
