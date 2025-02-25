set fish_greeting = ""

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
