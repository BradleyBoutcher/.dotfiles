source $HOME/.dotfiles/lists/.locations 
 
# Source all the files 
source $ALIASES 
source $ENVS
source $FUNCTIONS 
source $ENV_FILE_GO

plugins=( $(cat $ZSH_PLUGINS) ) 

# Go development
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Ruby
eval "$(rbenv init -)"

# Python
eval "$(pyenv init -)"