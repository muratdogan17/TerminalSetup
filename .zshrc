## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#Exports
# Setup for TheFuck extenstion
eval $(thefuck --alias)
export GITHUB_USER="GITHUB_USER_NAME"
export EDITOR="vim"
# Android Setup for React Native
export ANDROID_HOME=/usr/local/opt/android-sdk
# Adding MAMP php to the PATH for use with Wordpress CLI
export PATH="/usr/local/bin:/Applications/MAMP/bin/php/php7.1.1/bin:$PATH:/Applications/MAMP/Library/bin"

# Exporting YARN global bin to the path instead of using npm i -g
export PATH="$PATH:$(yarn global bin)"


# Setting up Zgen options

export ZGEN_RESET_ON_CHANGE=($HOME/.zshrc)
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then

  zgen prezto
  zgen prezto prompt theme 'paradox'
  zgen prezto '*:*' case-sensitive 'no'
  zgen prezto '*:*' color 'yes'
  zgen prezto git
  zgen prezto tmux
  zgen prezto utility:ls color 'yes'
  zgen prezto history-substring-search
  zgen prezto syntax-highlighting

  zgen save
fi

# Tmux Functions, open current session, new session, or kill all sessions

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
alias vim="mvim -v"
alias zconf="vim ~/.zshrc"
alias hconf="vim ~/.hyper.js"
alias vconf="vim ~/.vimrc"
alias r="source ~/.zshrc"
alias vi="vim"
alias tat='tmux new-session -As $(basename "$PWD" | tr . -)'
alias tmuxsrc="tmux source-file ~/.tmux.conf"
alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"
alias l="ls -la"
alias vhost="sudo vim /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf"
alias jekyll="bundle exec jekyll"

unsetopt correct
unsetopt auto_name_dirs

# added by travis gem
[ -f /Users/trasmussen/.travis/travis.sh ] && source /Users/trasmussen/.travis/travis.sh

