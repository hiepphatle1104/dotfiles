
ZSH_THEME="" 

plugins=(git)

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $SHELL -i -c exit; done
}

# Initialize ZSH
source "$dotfiles/.config/zsh/init.zsh"
