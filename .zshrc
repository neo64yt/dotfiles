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
pfetch

# text file
tput setaf 71
cat ~/.my_term

# Alises
alias rm="rm -r"
alias visudo="sudo nvim /etc/doas.conf"
alias windows="sudo mount /dev/sda3 /mnt"
alias ls="ls --color=auto"
alias clean-cache="rm -rf ~/.cache/*"
alias cp="cp -r"
alias ../..="cd ~/"
alias desktop="desktop-file-validate"

# Alias for updating dotfiles
alias config="/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME"

# Environment variables
export EDITOR="nvim"
export HOMEBIN="$HOME/bin"
## DMENU SETTINGS MANAGER ##
export STYLE="lxappearance" # Appearance
export USER_INFO="mugshot" # Account
export LOCK="xfce4-screensaver-preferences" # Lock screen
export LOGIN="lightdm-gtk-greeter-settings" # Login screen
export BT="blueman-manager" # Bluetooth
export RANDR="lxrandr" # Display
export NM="nm-connection-editor" # Network
export INPUT="lxinput" # Input devices
export POWER="xfce4-power-manager-settings" # Power
export AUDIO="pavucontrol" # Audio
export PACK="pamac-manager" # Package manager
export DEF_APPS="exo-preferred-applications" # Default applications
export PRINT="system-config-printer" # Printer
## DMENU SETTINGS MANAGER ##

#EOF
