export PATH="/usr/local/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"

COMPLETION_WAITING_DOTS="true"

plugins=(git ruby rails osx node golang

history zsh-syntax-highlighting zsh-autosuggestions
zsh-completions zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
eval "$(pyenv init -)"
