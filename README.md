# My personal dotfiles

## Stack:

- Neovim
- Alacritty
- Tmux
- bspwm

### Another utils
- Rofi (application launcher)
- VLC (videoplayer)
- nnn (cli file explorer)
- Polybar (status bar)

## Wiki
Available soon...


## Install

```shell
$ git clone https://github.com/rafailmdzdv/dotfiles.git ~/.dotfiles && sh -c ~/.dotfiles/INSTALL/install
```

### Vim
Install [packer](https://github.com/wbthomason/packer.nvim) and then:
```shell
$ nvim ~/.dotfiles/nvim/lua/plugins/plugins.lua
```
`:so%`
and then:
`:PackerSync`
