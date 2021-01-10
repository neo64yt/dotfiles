#   |\     |
#   | \    |
#   |  \   |
#   |   \  |
#   |    \ |
#   |     \|

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# show sysinfo
neofetch

# Alises
alias rm="rm -ri" # Delete files
alias ls="ls --color=auto" # List files
alias grep="grep --color=auto" # Grep
alias clean-cache="rm -rf ~/.cache/*" # Clean home directory cache
alias cp="cp -r" # Copy files
alias ..="cd .." # Go up 
alias desktop="desktop-file-validate" # Validating .desktop files
alias patch-del="patch -R" # Reversing patches
alias vim="nvim" # Assume Neovim as Vim
alias commit="git commit" # Commiting Git changes
alias p="sudo pacman" # Package management
alias push="git push" # Push Git commits to upstream repository
alias pull="git pull" # Sync local Git repository with upstream

# Alias for updating dotfiles
alias config="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME" # Git command for my dotfiles repo
alias config-reset="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME reset --hard" # Reset dotfiles to the last commit
alias config-update="$HOME/.updatedots" # Update all tracked files in the repository
alias config-sync="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME pull" # Syncing dotfiles with upstream repository

# Environment variables
# All environment variables are stored in this file:
source $HOME/.env_vars

# Syntax highlighting 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

## EOF ##
