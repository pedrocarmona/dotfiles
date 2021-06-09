
source $HOME/.aliases
source $HOME/.projects

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'

# Allow C-s to work for saving in CLI vim
stty -ixon

export PATH

cdpath=($HOME/Developer)

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
unsetopt LIST_BEEP

export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

export PATH="/Users/$USER/Library/Python/2.7/bin:$PATH"

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"

export PATH=$PATH:~/.npm-packages/bin/

# export NVM_DIR="$HOME/.nvm"
#     [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#     [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add default node to path
export PATH=~/.nvm/versions/node/v14.4.0/bin:$PATH

# Load NVM
export NVM_DIR="$HOME/.nvm"
[[ -s "/usr/local/opt/nvm/nvm.sh" ]] && source "/usr/local/opt/nvm/nvm.sh" --no-use

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
