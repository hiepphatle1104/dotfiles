## Hmmm... 🤔

Im just creating my personal workflow using nvim and some addtional tools.

### Tools

- Homebrew
- Nvim
- Tmux
- Ghostty
- GNU Stow
- Z-Shell

### Installing

#### Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### After install homebrew

```bash
# Clone repository
git clone --depth 1 https://github.com/hiepphatle1104/dotfiles.git ~/dotfiles

# Goto directory and install utils using Brewfile
brew bundle install
```

#### Then install tools

```bash
cd ~/dotfiles
stow .
```


#### Uninstall
```bash
cd ~/dotfiles 
stow -D . 
rm -rf ~/dotfiles
```
