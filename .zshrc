## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#Exports
eval $(thefuck --alias)
export GITHUB_USER="tallestthomas"
export EDITOR="vim"
export PATH=$PATH:"./node_modules/.bin"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools


export ZGEN_RESET_ON_CHANGE=($HOME/.zshrc)
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then

  zgen prezto
  zgen prezto prompt theme 'pure'
  zgen prezto '*:*' color 'yes'
  zgen prezto git
  zgen prezto tmux
  zgen prezto utility:ls color 'yes'
  zgen prezto history-substring-search
  zgen prezto syntax-highlighting

  zgen save
fi

function tmuxopen() {
  tmux attach -t $1
}

function tmuxnew() {
  tmux new -s $s
}

function tmuxkill() {
  tmux kill-session -t $1
}

# Aliases
## Configuration
alias zconf="vim ~/.zshrc"
alias hconf="vim ~/.hyper.js"
alias vconf="vim ~/.config/nvim/init.vim"

## Vim Stuff
alias vim="nvim"
alias vi="vim"

## Tmux
alias tat='tmux new-session -As $(basename "$PWD" | tr . -)'
alias tmuxsrc="tmux source-file ~/.tmux.conf"
alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"

## Navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias work='cd ~/Local\ Sites'
alias dev='cd ~/dev'

## Single letter
alias c="clear"
alias r="source ~/.zshrc"
alias l="ls -la"

##Applications
alias cra='create-react-app'

## Functions
trash () { command mv "$@" ~/.Trash }
ql () { qlmanage -p "$*" >& /dev/null }
findPid () { lsof -t -c "$@"; } 
cpuHogs () { ps wwaxr -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

unsetopt correct
unsetopt auto_name_dirs

# added by travis gem
[ -f /Users/trasmussen/.travis/travis.sh ] && source /Users/trasmussen/.travis/travis.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
