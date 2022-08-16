source $HOME/.locations 

export NVM_LAZY_LOAD=true
source $HOME/.antigen.zsh
source $ANTIGEN
# zmodload zsh/zprof

source $EXPORTS
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

# Go
# test -d "${GOPATH}" || mkdir "${GOPATH}"
# test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Ruby
# _evalcache rbenv init -

# Python
# _evalcache pyenv init -
