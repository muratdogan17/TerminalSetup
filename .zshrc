## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#Exports
eval $(thefuck --alias)
export ANDROID_HOME=/usr/local/opt/android-sdk
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
export PATH=~/.npm-global/bin:$PATH
export GITHUB_USER="tallestthomas"
export EDITOR="vim"

export WP_CLI_PHP="/Applications/MAMP/bin/php/php7.1.0/bin/php"


export ZGEN_RESET_ON_CHANGE=($HOME/.zshrc)
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  zgen prezto prompt theme 'minimal'

  zgen prezto
  zgen prezto git
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

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm" 

# Aliases
alias zconf="vim ~/.zshrc"
alias hconf="vim ~/.hyper.js"
alias vconf="vim ~/.vimrc"
alias r="source ~/.zshrc"
alias vi="vim"
alias tat='tmux new-session -As $(basename "$PWD" | tr . -)'
alias tmuxsrc="tmux source-file ~/.tmux.conf"
alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"

alias wp='php /Applications/MAMP/bin/php/php7.1.0/bin/wp-cli.phar'


