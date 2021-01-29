#   |\     |
#   | \    |
#   |  \   |
#   |   \  |
#   |    \ |
#   |     \|
# (c) Made by Neo64YT


# show fetch tool
pfetch

# Alises
alias rm="rm -ri" # Ask before deleting files recursively
alias ls="ls -A --color=auto" # List all files including hidden ones
alias grep="grep --color=auto" # Grep
alias clean-cache="rm -rf $XDG_CACHE_HOME/*" # Clean home directory cache
alias cp="cp -r" # Copy files
alias ..="cd .." # Go up 
alias desktop="desktop-file-validate" # Validating .desktop files
alias patch-del="patch -R" # Reversing patches
alias vim="nvim" # Assume Neovim as Vim
alias commit="git commit" # Commiting Git changes
alias p="sudo pacman" # Package management
alias push="git push" # Push Git commits to upstream repository
alias pull="git pull" # Sync local Git repository with upstream
alias yay="paru" # Assume paru as yay

# Alias for updating dotfiles
alias config="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME" # Git command for my dotfiles repo
alias config-reset="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME reset --hard" # Reset dotfiles to the last commit
alias config-update="updatedots" # Update all tracked files in the repository
alias config-sync="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME pull" # Syncing dotfiles with upstream repository

# Environment variables
# All environment variables are stored in .zprofile and .xprofile (both symlinked to $XDG_CONFIG_HOME/env_vars) 

# Plugins 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh # Syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # Autosuggestions

# Starship prompt
eval "$(starship init zsh)"

## EOF ##
