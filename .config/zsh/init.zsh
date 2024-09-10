
# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Configurations
source $dotfiles_config/zsh/alias.zsh
source $dotfiles_config/zsh/keybinding.zsh
source $dotfiles_config/zsh/history.zsh

# Themes
eval "$(starship init zsh)"

# Extensions
eval "$(zoxide init zsh)"

# Plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
