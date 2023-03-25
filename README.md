# My neovim set up
This is all my neovim set up files, including the .vimrc which was renamed to index.vim, a file for plugins called [**plugins.vim**](#-plugins.vim), a file for maps called [**maps.vim**](#-maps.vim) and a file for the sets called [**sets.vim**](#-sets.vim).

## .vimrc and index.vim
In order to move my vim configuration to this repository I had to move all my files to another folder. The **.vimrc** file which is the default file loaded, only contains one line sourcing the **index.vim** file, which has all the .vimrc configuration.
```
source <sfile>:h/my-nvim/index.vim
```

## plugins.vim
This vim configuration uses [vim-plug](https://github.com/junegunn/vim-plug) to install plugins.

This file has all the plugins installed in my vim config file. When adding a new plugin, just copy the following code and replace with your values. Some plugins require a diferent code, so be aware of that.
```
Plug 'repo_user/repo_name'
```
After doing that, use the following commands:
```
:so ~/.vimrc
:PlugInstall
```
I recommend running `:PlugUpdate` regularly to keep all the plugis up to date.

## sets.vim
This file has all the sets of the default neovim. You can configure this file as you like, adding or removing some lines, or just changed their values.

## maps.vim
This file has custom key maps and keyboard shortcuts. Most of the shortcuts are to run a specific action of a plugin. You can add your own shortcuts here.

> :warning: After opening making changes in any of these files, use `:so ~/.vimrc` to make those changes valid.

# License
You can use this repository as you like, as longs as the purpose is not something negative or harmful.

# Contribuing
This is a personal project, just to keep my nvim organized and to have it as a backup in case I replace my computer. However, I you want to fix something or update something feel free and welcome to do so.

# Future Changes
- Add an brief explanation or list of all the plugins that are activated in this configuration.
- Document the maps.vim file and add a list of those maps in the README.
