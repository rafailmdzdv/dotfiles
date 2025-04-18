set fish_greeting = ""

set -x DISABLE_AUT_TITLE true
set -x PATH "$HOME/bin:$PATH"
set -x PATH "$PATH:$HOME/.local/bin"
set -x PATH "$PATH:$HOME/.local/share/pypoetry/venv/bin/"
set -x PATH "$PATH:$HOME/.nvim/bin"

# JS
set -x PATH "$PATH:$HOME/.nodejs/bin"
set -x NPM_CONFIG_PREFIX "$HOME/.npm-global"
set -x PATH "$PATH:$HOME/.npm-global/bin"
set -x EDITOR nvim
set -x LANG "en_US.UTF-8"

alias tmuxnw "tmux new"
alias tmuxat "tmux attach -t"
alias tmuxsd "tmux kill-session -t"
alias tmuxls "tmux ls"
alias gitst "git status -s"
alias gitdf "git diff"
alias poetrysh "poetry shell"
alias ptree "tree -I '*venv' -I __pycache__"
alias jtree "tree -I node_modules -I dist"
alias rtree "tree -I target"
alias bat "bat --theme base16"
alias xcopy "xclip -selection clipboard"
alias tmuxvert "tmux split-window -h -c '#{pane_current_path}'"
alias l "eza --icons --all --long"
alias ll "eza --icons --long"

set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

fish_vi_key_bindings

starship init fish | source

set -Ux FZF_DEFAULT_OPTS "
	--color=fg:#908caa,bg:#232136,hl:#ea9a97
	--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
	--color=border:#44415a,header:#3e8fb0,gutter:#232136
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"
