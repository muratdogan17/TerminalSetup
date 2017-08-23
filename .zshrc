## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#Exports
eval $(thefuck --alias)
export ANDROID_HOME=/usr/local/opt/android-sdk
export GITHUB_USER="tallestthomas"
export EDITOR="vim"
export PATH="/usr/local/bin:/Applications/MAMP/bin/php/php7.1.1/bin:$PATH:/Applications/MAMP/Library/bin"
export PATH=$PATH:"./node_modules/.bin/"


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
alias vim="nvim"
alias zconf="vim ~/.zshrc"
alias hconf="vim ~/.hyper.js"
alias vconf="vim ~/.config/nvim/init.vim"
alias r="source ~/.zshrc"
alias vi="vim"
alias tat='tmux new-session -As $(basename "$PWD" | tr . -)'
alias tmuxsrc="tmux source-file ~/.tmux.conf"
alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"
alias l="ls -la"
alias vhost="sudo vim /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf"
alias jekyll="bundle exec jekyll"
alias ..="cd .."
alias ...="cd ../.."
alias cra='create-react-app'

unsetopt correct
unsetopt auto_name_dirs

# added by travis gem
[ -f /Users/trasmussen/.travis/travis.sh ] && source /Users/trasmussen/.travis/travis.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
