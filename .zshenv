# Environment variables

# dofiles
export DOTFILES="$HOME/dotfiles"
export DOTFILES_CONFIG="$DOTFILES/.config"

# Lazygit
export LG_CONFIG_FOLDER="$DOTFILES_CONFIG/lazygit"
export LG_CONFIG_FILE="$LG_CONFIG_FOLDER/config.yml"

# zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"
export BAT_THEME="Catppuccin Mocha"

# java
export JAVA_HOME="$(/usr/libexec/java_home)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"

# go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# others
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH="/Users/hphats/.local/bin:$PATH"
. "$HOME/.cargo/env"

