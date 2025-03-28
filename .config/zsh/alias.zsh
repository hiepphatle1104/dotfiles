alias cd="z" 
alias cat="bat --style=numbers --color=always"
alias ls="eza --icons=always"
alias ll="eza -l --icons=always" 
alias l="eza -l --icons=always" 
alias la="eza -la --icons=always "
alias ta="eza --all --tree --level=3 --icons=always --ignore-glob=\".git|.gitignore\""
alias ts="eza --tree --level=3 --icons=always --ignore-glob=\".git|.gitignore\""
alias cls="clear" 
alias vsc="code ." 
alias dps="docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}\""
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias pyenv="python3 -m venv .venv && source .venv/bin/activate"
alias py="python3"
alias vim="nvim"
alias v="nvim"
alias lzg="lazygit"
alias gradlew="./gradlew"
alias ipconfig="ifconfig | grep \"inet \" | grep -v 127.0.0.1 | awk '{print \"Broadcast:\", \$NF, \"- IP:\", \$2}'"
alias showports="sudo netstat -anp tcp | grep LISTEN | awk '{print \"Protocol:\", \$1, \"| IP:\", \$4, \"| Port:\", \$5}'"
