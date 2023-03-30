" Sets
source <sfile>:h/sets.vim
" PLUGINS
source <sfile>:h/plugins.vim
" Maps
source <sfile>:h/maps.vim

" SCHEME THEME
colorscheme gruvbox
"let g:lightline = { 'colorscheme': 'palenight' }
"let g:palenight_terminal_italics=1

" IndentLine CONFIG
"let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¬¶', '‚îÜ', '‚îä']

" MARKDOWN PREVIEW CONFIG
let g:mkdp_auto_start = 1
let g:mkdp_echo_preview_url = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'sync_scroll_type': 'relative',
    \ 'disable_filename': 1
    \ }

let g:mkdp_page_title = '${name}'
let g:mkdp_filetypes = ['markdown']
"MARKDOWN PREVIEW CONFIG END

let g:user_emmet_leader_key=','
    
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar simbolo el nombre del archivo
" Cargar fuente Powerline y simbolos
let g:airline_powerline_fonts = 0
let g:airline_theme='bubblegum'
"let g:airline_theme='gruvbox'

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.', 'term:.']

" Invertir direccion de navegacion (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'

let g:echodoc_enable_at_startup = 1

"let g:rainbow_active = 1 " Global files
"let g:rainbow_guifgs = ['magenta', 'DarkOrchid3'] "solo morado

let g:coc_snippet_next = '<tab>'
"let g:coc_snippet_prev = '<S-tab>'
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-vimtex',
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-python',
    \ 'coc-java',
    \ 'coc-go',
    \ 'coc-prettier',
    \ 'coc-java-debug',
    \ 'coc-yaml',
    \ 'coc-html',
    \ '@yaegassy/coc-tailwindcss3',
    \ ]
    "\ 'coc-phpls',
    "\ 'coc-eslint',

let g:tex_flavor = 'latex'
"let g:vimtex_compiler_latexmk = {'continuous': 0}
"let g:vimtex_latexmk_options = '-pdf -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode'

let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

"let g:vimspector_enable_mappings='HUMAN'

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden = 1
