# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean" # set by `omz`
plugins=(git fzf-tab zsh-wakatime)
source $ZSH/oh-my-zsh.sh

# aliases
alias tmuxnw="tmux new"
alias tmuxat="tmux at -t"
alias tmuxsd="tmux kill-session -t"
alias tmuxls="tmux ls"
alias gitst="git status -s"
alias gitdf="git diff"
alias poetrysh="poetry shell"
alias ptree="tree -I '*venv' -I __pycache__"
alias jtree="tree -I node_modules -I dist"
alias rtree="tree -I target"
alias bat="bat --theme base16"
alias xcopy="xclip -selection clipboard"
alias tmuxvert="tmux split-window -h -c '#{pane_current_path}'"
alias o2ApiKill="ps -awf | grep 'main_app/main.py' | awk '{print \$2}' | xargs -I{} kill -9 {}"

export TERM=xterm-256color

# variables
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/pypoetry/venv/bin/
export PATH=$PATH:$HOME/.nvim/bin
# JS
export PATH=$PATH:$HOME/.nodejs/bin
export NPM_CONFIG_PREFIX=$HOME/.npm-global
export PATH=$PATH:$HOME/.npm-global/bin

alias l="eza --icons --all --long"
alias ll="eza --icons --long"
alias neovide="neovide --wsl"
# Python bin export
# for dir in $HOME/.python/*
# do
#     export PATH=$PATH:$dir/bin
# done
export NNN_PLUG='s:! echo $nnn|xclip -selection clipboard*'

set -o vi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
