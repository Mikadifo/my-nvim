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
>**Notes:** If you're using airline plugin, check the info below.
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
>**Notes:** Check the official repositories for more information about this configuration.

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
>**Notes:** Make sure to include the coc extension for this plugin.

### XML
:computer: **Repository:** https://github.com/othree/xml.vim

:information_source: **About:** This is a syntax plugin for xml.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).
```
Plug 'othree/xml.vim'
```
>**Notes:** This plugin, doesn't not require extra configuration, but I'm not sure if it should be added to the coc extension list in order to work.

### Markdown
:computer: **Repository:** https://github.com/lervag/vimtex

:information_source: **About:** This is a markdown preview plugin.

:wrench: **Configuration** Just paste the following codes in the .vimrc. If using this project, paste on [plugins.vim](./plugins.vim).
```
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
```
>**Notes:** See official repository for more information. I'm not sure if it should be added to the coc extension list in order to work.

" GraphQL, supports in js and ts files as well
Plug 'jparise/vim-graphql'

" JS
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'mxw/vim-jsx' "React
"Plug 'othree/yajs.vim' "causing color theme changes
"Plug 'beautify-web/js-beautify'
"Plug 'pangloss/vim-javascript' "causing color theme changes

" TS
"Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Java
"Plug 'uiiaoo/java-syntax.vim'
"Plug 'artur-shaik/vim-javacomplete2'

" Python 3
"Plug 'jmcantrell/vim-virtualenv'

" Haskell
Plug 'neovimhaskell/haskell-vim'
## IDE plugins
" IDE
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/echodoc.vim' " Muestra la firma de la funcion
Plug 'tpope/vim-fugitive' " Provee comandos de git
Plug 'airblade/vim-gitgutter' " Muestra cambios hechos en el archivo en la columna de signos
Plug 'xuyuanp/nerdtree-git-plugin' " Muestra el estado de los archivos en Nerdtree
Plug 'preservim/nerdcommenter'
Plug 'yegappan/taglist' " Provides an overview of the structure of source code files
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'frazrepo/vim-rainbow' " Rainbow Brackets <3
"Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multicursor
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'vim-test/vim-test'


---

# License
You can use this repository as you like, as longs as the purpose is not something negative or harmful.

# Contribuing
This is a personal project, just to keep my nvim organized and to have it as a backup in case I replace my computer. However, I you want to fix something or update something feel free and welcome to do so.

# Future Changes
- Add an brief explanation or list of all the plugins that are activated in this configuration.
- Document the maps.vim file and add a list of those maps in the README.
