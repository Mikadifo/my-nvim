# My neovim set up

This is all my neovim set up files, including the .vimrc which was renamed to index.vim, a file for plugins called [**plugins.vim**](#pluginsvim), a file for maps called [**maps.vim**](#mapsvim) and a file for the sets called [**sets.vim**](#setsvim).

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

I recommend running `:PlugUpdate` regularly to keep all the plugins up to date.

## sets.vim

This file has all the sets of the default neovim. You can configure this file as you like, adding or removing some lines, or just changed their values.

## maps.vim

This file has custom key maps and keyboard shortcuts. Most of the shortcuts are to run a specific action of a plugin. You can add your own shortcuts here.

> :warning: After opening making changes in any of these files, use `:so ~/.vimrc` to make those changes valid.

# Plugins and their configuration

This project has mostly plugins for javascript development, including React, check the [plugins](#pluginsvim) file to see the list in the file and what plugin manager the project uses.

Make sure you habe vim-plug installed and if you are only using .vimrc that you have correctly set up vim-plug.

---

## Theming Plugin/s

### Gruvbox theme

:computer: **Repository:** https://github.com/morhetz/gruvbox

:information_source: **About:** This plugin sets the most vim classic theme, the popular gruvbox.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'morhetz/gruvbox'
```

```
colorscheme gruvbox
```

> **Notes:** If you're using airline plugin, check the info below.

### Airline & airline themes

:computer: **Repository 1:** https://github.com/vim-airline/vim-airline

:computer: **Repository 2:** https://github.com/vim-airline/vim-airline-themes

:information_source: **About:** This plugins make the bottom tab in vim, a lot cooler, you can even use the gruvbox theme mentioned above.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
```

```
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" This loads Powerline font and symbols
let g:airline_powerline_fonts = 0
let g:airline_theme='bubblegum' " Here you can use gruvbox
```

> **Notes:** Check the official repositories for more information about this configuration.

## Plugins by language

### LaTeX

:computer: **Repository:** https://github.com/lervag/vimtex

:information_source: **About:** This is a syntax plugin for latex.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'lervag/vimtex'
```

```
let g:tex_flavor = 'latex'
let g:coc_global_extensions = [
    \ 'coc-vimtex',
    \ ]
```

> **Notes:** Make sure to include the coc extension for this plugin.

### HTML

:computer: **Repository:** https://github.com/othree/html5.vim

:information_source: **About:** This is a syntax plugin for html5.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'othree/html5.vim'
```

> **Notes:** See official repository for more information.

### XML

:computer: **Repository:** https://github.com/othree/xml.vim

:information_source: **About:** This is a syntax plugin for xml.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'othree/xml.vim'
```

> **Notes:** This plugin, doesn't not require extra configuration, but I'm not sure if it should be added to the coc extension list in order to work.

### Markdown

:computer: **Repository:** https://github.com/lervag/vimtex

:information_source: **About:** This is a markdown preview plugin.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
```

> **Notes:** See official repository for more information.

### CSS

:computer: **Repository:** https://github.com/ap/vim-css-color

:information_source: **About:** This is a plugin that shows you the colors in your css file.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'ap/vim-css-color'
```

> **Notes:** See official repository for more information.

### GraphQL

:computer: **Repository:** https://github.com/jparise/vim-graphql

:information_source: **About:** This is a syntax plugin for graphql.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'jparise/vim-graphql'
```

> **Notes:** This plugin also supports graphql in js files. See official repository for more information.

<!--### Python 3 (Not it use, not working either)-->

<!--:computer: **Repository:** https://github.com/jmcantrell/vim-virtualenv-->

<!--:information_source: **About:** This plugin helps to manage python virtual envs.-->

<!--:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).-->

<!--```-->
<!--"Plug 'jmcantrell/vim-virtualenv'-->
<!--```-->

<!--> **Notes:** See official repository for more information.-->

<!--:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).-->

<!--```-->
<!--"Plug 'jmcantrell/vim-virtualenv'-->
<!--```-->

<!--> **Notes:** See official repository for more information.-->

### Haskell

:computer: **Repository:** https://github.com/neovimhaskell/haskell-vim

:information_source: **About:** This is a syntax plugin for haskell.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'neovimhaskell/haskell-vim'
```

> **Notes:** See official repository for more information.

### Typescript

:computer: **Repository:** https://github.com/peitalin/vim-jsx-typescript

:information_source: **About:** This is a syntax plugin for typescript in jsx files.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'peitalin/vim-jsx-typescript'
```

```
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ ]
```

> **Notes:** Make sure to include the coc extension for this plugin. See official repository for more information.

### Javascript

:computer: **Repository:** https://github.com/maxmellon/vim-jsx-pretty

:information_source: **About:** This is a syntax plugin for javascript, including jsx files.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'maxmellon/vim-jsx-pretty'
```

```
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ ]
```

> **Notes:** Make sure to include the coc extension for this plugin. See official repository for more information.

### Svelte

:computer: **Repository:** https://github.com/evanleck/vim-svelte

:information_source: **About:** This is a plugin that enables syntax highliting for svelte files.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'evanleck/vim-svelte', {'branch': 'main'}
```

> **Notes:** See official repository for more information.

## IDE plugins

### Vim Surround

:computer: **Repository:** https://github.com/tpope/vim-surround

:information_source: **About:** This is a plugin that helps your surround a line or word faster.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'tpope/vim-surround'
```

> **Notes:** See official repository for more information.

### Icons

:computer: **Repository:** https://github.com/ryanoasis/vim-devicons

:information_source: **About:** This is a plugin that adds icons to many other plugins.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'ryanoasis/vim-devicons'
```

> **Notes:** See official repository for more information.

### Easymotion

:computer: **Repository:** https://github.com/easymotion/vim-easymotion

:information_source: **About:** This is a plugin that helps you move quickly in your files.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'easymotion/vim-easymotion'
```

> **Notes:** See official repository for more information.

### Nerdtree

:computer: **Repository:** https://github.com/scrooloose/nerdtree

:information_source: **About:** This is a plugin that shows files in your current project.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'scrooloose/nerdtree'
```

> **Notes:** See official repository for more information.

### Nerdtree Git

:computer: **Repository:** https://github.com/xuyuanp/nerdtree-git-plugin

:information_source: **About:** This is a plugin that shows git status on nerdtree.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'xuyuanp/nerdtree-git-plugin'
```

> **Notes:** See official repository for more information.

### Vim tmux navigator

:computer: **Repository:** https://github.com/christoomey/vim-tmux-navigator

:information_source: **About:** This is a plugin that allows you to move between your buffers.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'christoomey/vim-tmux-navigator'
```

> **Notes:** See official repository for more information.

### IndentLine

:computer: **Repository:** https://github.com/Yggdroot/indentLine

:information_source: **About:** This is a plugin that displays smooth lines to show identation.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'Yggdroot/indentLine'
```

```
let g:indentLine_char_list = ['|', '¬¶', '‚îÜ', '‚îä']
" Not show in certain buffers and files
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.', 'term:.']
```

> **Notes:** See official repository for more information.

### Echodoc

:computer: **Repository:** https://github.com/Shougo/echodoc.vim

:information_source: **About:** This is a plugin that shows the signature of the functions.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'Shougo/echodoc.vim'
```

```
let g:echodoc_enable_at_startup = 1
```

> **Notes:** See official repository for more information.

### Vim-fugitive

:computer: **Repository:** https://github.com/tpope/vim-fugitive

:information_source: **About:** This is a plugin that provides git commands.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'tpope/vim-fugitive'
```

> **Notes:** See official repository for more information.

### Vim-gitgutter

:computer: **Repository:** https://github.com/airblade/vim-gitgutter

:information_source: **About:** This is a plugin that shows changes on the file in the signs colum.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'airblade/vim-gitgutter'
```

> **Notes:** See official repository for more information.

### Nerdcommenter

:computer: **Repository:** https://github.com/preservim/nerdcommenter

:information_source: **About:** This is a plugin that helps you easily comment your code.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).

```
Plug 'preservim/nerdcommenter'
```

> **Notes:** See official repository for more information.

### Coc.nvim

:computer: **Repository:** https://github.com/neoclide/coc.nvim

:information_source: **About:** This is a plugin that provides completion pop up and support for many other extensions.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim) and [index.vim](./index.vim) respectively.

```
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
```

```
let g:coc_snippet_next = '<tab>'
" You can add a list of extensions that will be installed if they're not when you open a new file.
" Or you can just use the :CocInstall name-plugin to install any plugin
let g:coc_global_extensions = [
    \ 'coc-marketplace',
    " More extensions here...
    \ ]
```

> **Notes:** See official repository for more information. See the first extension `marketplace` allows you to manage all your coc extensions.

" IDE
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

---

# License

You can use this repository as you like, as longs as the purpose is not something negative or harmful.

# Contribuing

This is a personal project, just to keep my nvim organized and to have it as a backup in case I replace my computer. However, I you want to fix something or update something feel free and welcome to do so.

# Future Changes

- Add an brief explanation or list of all the plugins that are activated in this configuration.
- Document the maps.vim file and add a list of those maps in the README.
