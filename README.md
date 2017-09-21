My personal terminal setup for javascript and wordpress development.

For my terminal I use Zeit's [hyper.app](https://github.com/zeit/hyper) which I
reccomend fully.

**I highly reccomend that you take a look around in each config file to get an
idea of what I like to use. But I won't say you should copy it exactly, each
person's preference is totally different. Feel free to clone it and make it your
own** :smile:

# Requirements
- Zsh
- [Zgen](https://github.com/tarjoilija/zgen)
- [NeoVim](https://neovim.io)
- [Vim-plug](https://github.com/junegunn/vim-plug)
- Tmux
- [The Fuck](https://github.com/nvbn/thefuck)

# Setup
1. Fork this repo and clone it locally
2. Make sure all the requirements are installed
3. Copy `.tmux.conf` and `.zshrc` to your home directory
4. Reload your terminal or use the command `source ~/.zshrc` to reload
5. Copy `init.vim` to `~/.config/nvim/`
6. Open vim and enter the command `:PlugInstall`, this should run an
   installation for all the plugins. If that does not work at first, try using
   the command `source ~/.config/nvim/init.vim` then try again.

