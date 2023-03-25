set number
set mouse=a
set numberwidth=1 
"set nohlsearch
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
"set colorcolumn=78
set signcolumn=yes
set sw=4
set scrolloff=8
set relativenumber
set laststatus=2
set noshowmode
set path=**
set updatetime=300 " Update bar every 300ms
set cmdheight=2
set shortmess+=c
" set foldmethod=indent
" set foldlevel=0
" JAVA
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
"set makeprg=ant\ -find\ %:p:h/build.xml
set makeprg=mvn\ clean\ package

" COC
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

"Themes
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif
