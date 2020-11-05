source locations 
 
source $ALIASES 
source $ENVS
source $FUNCTIONS 
source $ENV_FILE_GO

source $ZSH/oh-my-zsh.sh

plugins=($(cat .zsh_plugins)) 

# Go development
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Ruby
eval "$(rbenv init -)"
eval "$(pyenv init -)"