# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

source $HOME/.aliases

cdpath=($HOME/Developer)

export EDITOR='vim'

# Allow C-s to work for saving in CLI vim
stty -ixon
