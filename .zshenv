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
export PATH="/usr/local/bin/sephera:$PATH"
. "$HOME/.cargo/env"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ngrok
if command -v ngrok &>/dev/null; then
    eval "$(ngrok completion)"
  fi

