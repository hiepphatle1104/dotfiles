# Home
export DOTFILE_DIR=$HOME/dotfiles
export XDG_CONFIG_HOME=$HOME/.config

# Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Homebrew
export HOMEBREW_NO_ENV_HINTS=1

# Plugins
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
export BAT_THEME="Catppuccin Mocha"

# Nvim
export MYNVIMRC="$HOME/.config/nvim/init.lua"
