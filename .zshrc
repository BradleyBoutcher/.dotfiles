source $HOME/.locations 
source $HOME/.antigen.zsh

source $ZSH/oh-my-zsh.sh
source $ANTIGEN
source $ALIASES
source $FUNCTIONS

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

# Case-insensitive globbing (used in pathname expansion)
setopt nocaseglob;

# Append to the Bash history file, rather than overwriting it
setopt histappend;

# Go development
# test -d "${GOPATH}" || mkdir "${GOPATH}"
# test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# # Ruby
# eval "$(rbenv init -)"

# # Python
# eval "$(pyenv init -)"
