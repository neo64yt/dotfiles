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
alias rm="rm -ri"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias clean-cache="rm -rf ~/.cache/*"
alias cp="cp -r"
alias ..="cd .."
alias desktop="desktop-file-validate"
alias patch-del="patch -R"

# Alias for updating dotfiles
alias config="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME"
alias config-reset="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME reset --hard"
alias config-update="$HOME/.updatedots"

# Environment variables
# All environment variables are stored in this file:
source $HOME/.env_vars

# Syntax highlighting 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

## EOF ##
