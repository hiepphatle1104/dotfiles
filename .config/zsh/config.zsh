source $ZSH/oh-my-zsh.sh

source $HOME/.config/zsh/keymaps.zsh
source $HOME/.config/zsh/history.zsh
source $HOME/.config/zsh/alias.zsh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $HOMEBREW_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
