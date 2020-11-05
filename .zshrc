
plugins=($(cat .zsh_plugins)) 

source $ZSH/oh-my-zsh.sh
source .aliases 
source .env
source .functions

# Go development
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Ruby
eval "$(rbenv init -)"
eval "$(pyenv init -)"