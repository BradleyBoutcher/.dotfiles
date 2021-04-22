source $HOME/.locations 

# Source all the files 
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don't want to commit.
for file in ~/.{$ALIASES,$ENVS,$EXPORTS,$FUNCTIONS,$ENV_FILE_GO}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

plugins=( $(cat $ZSH_PLUGINS) ) 
source $ZSH/oh-my-zsh.sh

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Go development
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Ruby
eval "$(rbenv init -)"

# Python
eval "$(pyenv init -)"
