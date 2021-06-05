# Notice
This repository is now archived and succeeded by glorious-dotfiles.

# dotfiles
This is the repository where I store backups of my dotfiles made using Git bare repository method.

## What are dotfiles?
Dotfiles are basically configuration files. They usually bear a dot in front of their names.

## How to clone
As this is a bare Git repository, first create a new directory called git-src (recommended). Then, clone as the following example:
```
/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME clone https://github.com/neo64yt/dotfiles.git
```

## Included configurations
* [dwm](https://github.com/neo64yt/dwm-neo64/)
* [dmenu](https://github.com/neo64yt/dwm-neo64/) scripts
* zsh
* bspwm
* Autostart applications
* GTK theme
* **Too much that you should see it yourself in the repository, badly :P**

## NOTICE
To ensure compatibility of my .dmenu/power script with Artix Linux, I used _sudo poweroff_ and _sudo reboot_ instead. Please add these lines to the sudoers file:
```
%wheel arch-neo64=(root) NOPASSWD: /sbin/poweroff
%wheel arch-neo64=(root) NOPASSWD: /sbin/reboot
```

