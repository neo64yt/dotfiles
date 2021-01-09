# dotfiles
This is the repository where I store backups of my dotfiles made using Git bare repository method.

## What are dotfiles?
Dotfiles are basically configuration files. They usually bear a dot in front of their names.

## How to clone
As this is a bare Git repository, first create a new directory called git-src (recommended). Then, clone as the following example:
```
/usr/bin/git --git-dir=$HOME/git-src/dotfiles/ --work-tree=$HOME clone https://github.com/neo64yt/dotfiles.git
```

