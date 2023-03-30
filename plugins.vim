call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" IDE
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/echodoc.vim' " Muestra la firma de la funcion
Plug 'tpope/vim-fugitive' " Provee comandos de git
Plug 'airblade/vim-gitgutter' " Muestra cambios hechos en el archivo en la columna de signos
Plug 'preservim/nerdcommenter'
"Plug 'yegappan/taglist' " Provides an overview of the structure of source code files
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'frazrepo/vim-rainbow' " Rainbow Brackets <3
"Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multicursor

" Others
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'othree/xml.vim'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips' "UltiSnipsEdit -> for customs
Plug 'honza/vim-snippets'

" JS
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'mxw/vim-jsx' "React
"Plug 'othree/yajs.vim' "causing color theme changes
"Plug 'beautify-web/js-beautify'
"Plug 'pangloss/vim-javascript' "causing color theme changes

" TS
"Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" MD
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" CSS
Plug 'ap/vim-css-color'

" LaTeX
"Plug 'lervag/vimtex'

" GraphQL, supports in js and ts files as well
Plug 'jparise/vim-graphql'

" Java
"Plug 'uiiaoo/java-syntax.vim'
"Plug 'artur-shaik/vim-javacomplete2'

" Python 3
"Plug 'jmcantrell/vim-virtualenv'

" Tests
"Plug 'vim-test/vim-test'

" Haskell
Plug 'neovimhaskell/haskell-vim'
call plug#end()
