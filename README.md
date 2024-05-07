# My personal dotfiles

## Stack:

- Neovim
- Alacritty
- Tmux
- bspwm

## Install

```shell
$ git clone https://github.com/rafailmdzdv/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
$ ln -s ~/.dotfiles/{bspwm,sxhkd,polybar,nvim,alacritty} ~/.config
$ ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
$ ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

### Tmux
Install [TPM](https://github.com/tmux-plugins/tpm) for tmux.

### Vim
Install [packer](https://github.com/wbthomason/packer.nvim) and then:
```shell
$ nvim ~/.dotfiles/nvim/init.lua
```
`:so%`
and then:
`:PackerSync`
