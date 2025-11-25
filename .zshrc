ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"

# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History
HISTFILE="$HOME/.zhistory"
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Keymap
bindkey '[C' forward-word
bindkey '[D' backward-word
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Alias
alias cd="z" 
alias cat="bat --style=numbers --color=always"
alias ls="eza --icons=always"
alias ll="eza -l --icons=always" 
alias l="eza -l --icons=always" 
alias la="eza -la --icons=always "
alias ta="eza --all --tree --icons=always --ignore-glob=\".git|.gitignore\""
alias ts="eza --tree --level=3 --icons=always --ignore-glob=\".git|.gitignore\""

# Docker
alias dc="docker compose"

# Python
alias py="python3"
alias pyenv="source .venv/bin/activate"

# Nvim
alias vi="nvim"
