export ZSH="$HOME/.oh-my-zsh"
export BAT_THEME="Catppuccin Mocha" 
export DOTFILES="$HOME/dotfiles" 
export DOTFILES_CONFIG="$DOTFILES/.config"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
. "$HOME/.cargo/env"
export HOMEBREW_NO_AUTO_UPDATE=1
export WEZTERM_CONFIG_FILE="$HOME/.config/wezterm/wezterm.lua"
export LG_CONFIG_FOLDER="$DOTFILES_CONFIG/lazygit"
export LG_CONFIG_FILE="$LG_CONFIG_FOLDER/config.yml"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$JAVA_HOME/bin:$PATH"
