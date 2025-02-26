# Environment
local ZSH_CONFIG_LOCAL="$DOTFILES_CONFIG/zsh"
local PLUGINS_DIR="$(brew --prefix)/share"

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Configurations
source $ZSH_CONFIG_LOCAL/alias.zsh
source $ZSH_CONFIG_LOCAL/keybinding.zsh
source $ZSH_CONFIG_LOCAL/history.zsh

# Themes
eval "$(starship init zsh)"

# Extensions
eval "$(zoxide init zsh)"

# Plugins
source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
