source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle autojump
antigen bundle command-not-found
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle osx
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-autosuggestions

#Load theme
antigen theme avit

#apply antigen stuff
antigen apply


[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm" 

export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

if [ -z $TMUX  ]; then; tmux; fi

export PATH=~/.npm-global/bin:$PATH

alias zconf="vim ~/.zshrc"
alias hconf="vim ~/.hyper.js"
alias reconf="source ~/.zshrc"

eval $(thefuck --alias)
