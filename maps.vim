let mapleader=" "

autocmd FileType haskell setlocal expandtab
autocmd FileType haskell autocmd BufWritePre <buffer> call CocAction('format')

"autocmd FileType java setlocal ts=4 sw=4 expandtab

"LATEX
command CompileOpenPdfLatex :!cd %:p:h; pdflatex %:t; open %:t:r.pdf
"De preferencia poner main.pdf

"JAVA
"Genera un nuevo proyecto de maven con el conmbre dado el el directorio actual
command -nargs=1 MavenQuickstart :!mvn archetype:generate -DgroupId=com.mikadifo -DartifactId=<args> -DarchetypeArtifactI=maven-archetype-quickstart -DinteractiveMode=false
" Se hay una forma de abrir buffer usar ; cd\ <args>; pwd al final
"nmap <Leader>gg mawv/ <CR>"ty/ <CR>wvwh"ny/getters<CR>$a<CR><CR><Esc>xxapublic <Esc>"tpa<Esc>"npbiget<Esc>l~ea()<CR>{<CR><Tab>return <Esc>"npa;<CR>}<Esc>=<CR><Esc>/setters<CR>$a<CR><CR><Esc>xxapublic void<Esc>"npbiset<Esc>l~ea(<Esc>"tpa <Esc>"npa)<CR>{<CR><Tab>this.<Esc>"npa=<Esc>"npa;<CR>}<Esc>=<CR>`ak NOT WORKING CORRECTLY and requeirs getters and setters comment

nnoremap <Esc> <Esc> <Esc>
nnoremap <silent> K :call ShowDocumentation()<CR>

nmap ss <Plug>(easymotion-s2)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <Leader>ff :Files<CR>
nmap <Leader>fe :BLines<CR>
nmap <Leader>ft :Lines<CR>
nmap <Leader>fa :Rg<CR>

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>nn :NERDTree<CR>

nmap <Leader>tt :TagbarToggle<CR>

nmap <Leader>vv :vsplit<CR>
nmap <Leader>vs :split<CR>
nmap <Leader>oo :on<CR>

nmap <Leader>hh :wincmd h<CR>
nmap <Leader>jj :wincmd j<CR>
nmap <Leader>kk :wincmd k<CR>
nmap <Leader>ll :wincmd l<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>bn :bn<CR>
nmap <Leader>bN :bp<CR>
nmap <Leader>bd :bd<CR>

" Formatting selected code
xmap <Leader>f  <Plug>(coc-format-selected)
nmap <Leader>f  <Plug>(coc-format-selected)

"Coc hide when bugged screnn
nmap <Leader>ch :call coc#util#float_hide()<CR>
"nmap <silent>gd <Plug>(coc-definition)

"LATEX
"nmap <Leader>lt :CompileOpenPdfLatex<CR>
"nmap <Leader>lt :VimtexCompile<CR>:VimtexView<CR>
nmap <Leader>lt :VimtexCompile<CR>
nmap <Leader>lv :VimtexView<CR>
nmap <Leader>lc :VimtexClean<CR>
nmap <Leader>lh :VimtexTocOpen<CR>

"MARKDOWN
nmap <Leader>mt <Plug>MarkdownPreviewToggle

" JAVA ANT
"nmap <Leader>rr :!ant -find %:p:h/build.xml run<CR>

" JAVA
"autocmd BufRead *.java set efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
"autocmd BufRead set makeprg=ant\ -find\ build.xml
"autocmd Filetype java set makeprg=javac\ %
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

" JAVA MAVEN
"nmap <Leader>p :make<CR>
"nmap <Leader>r :!java -jar target/%:t:r.jar<CR>
"nmap <Leader>mq :MavenQuickstart<Space>

" JAVA DEBUG
"nmap <Leader>d :CocCommand java.debug.vimspector.start<CR>
"nmap <Leader>db :call vimspector#ToggleBreakpoint()<CR>

" Tests
" Run tests on nearest test to the cursor
nmap <Leader>tn :TestNearest<CR>
" Run tests on entire file
nmap <Leader>tf :TestFile<CR>
" Run tests on entire project
nmap <Leader>tt :TestSuite<CR>
" Visits tests file
nmap <Leader>tv :TestVisit<CR>

nmap <Leader>al :AirlineRefresh<CR>:NERDTreeFind<CR>q

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
endif

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(0) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(0) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Check for whitespace before cursor
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

augroup SyntaxSettings
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact
augroup END

" Copilot
imap  <silent><script><expr> <C-Space> copilot#Accept("\<CR>")
