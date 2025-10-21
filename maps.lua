vim.g.mapleader = " "

local keyset = vim.keymap.set

function _G.show_docs()
	local cw = vim.fn.expand('<cword>')
	if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
		vim.api.nvim_command('h ' .. cw)
	elseif vim.api.nvim_eval('coc#rpc#ready()') then
		vim.fn.CocActionAsync('doHover')
	else
		vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
	end
end

-- Check for whitespace before cursor
function _G.check_back_space()
	local col = vim.fn.col('.') - 1
	return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	callback = function()
		vim.opt_local.expandtab = true
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				vim.cmd("call CocAction('format')")
			end
		})
	end
})

--autocmd FileType java setlocal ts=4 sw=4 expandtab

--LATEX
vim.api.nvim_create_user_command("CompileOpenPdfLatex", function()
	local file = vim.fn.expand("%")
	local dir = vim.fn.expand("%:p:h")
	local name = vim.fn.expand("%:t:r")

	local cmd = string.format("cd %s && pdflatex %s && open %s.pdf", dir, file, name)

	vim.fn.system(cmd)
end, {})

--JAVA
--Genera un nuevo proyecto de maven con el conmbre dado el el directorio actual
--command -nargs=1 MavenQuickstart :!mvn archetype:generate -DgroupId=com.mikadifo -DartifactId=<args> -DarchetypeArtifactI=maven-archetype-quickstart -DinteractiveMode=false
-- Se hay una forma de abrir buffer usar ; cd\ <args>; pwd al final

--keyset("n", "<Esc>", "<Esc><Esc><Esc>", { noremap = true, silent = true })

keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })
keyset("n", "ss", "<Plug>(easymotion-s2)", {})

-- GoTo code navigation.
keyset("n", "gd", "<Plug>(coc-definition)", {})
keyset("n", "gy", "<Plug>(coc-type-definition)", {})
keyset("n", "gi", "<Plug>(coc-implementation)", {})
keyset("n", "gr", "<Plug>(coc-references)", {})

keyset("n", "<leader>ff", ":Files<CR>", {})
keyset("n", "<leader>fe", ":BLines<CR>", {})
keyset("n", "<leader>ft", ":Lines<CR>", {})
keyset("n", "<leader>fa", ":Rg<CR>", {})

keyset("n", "<leader>nt", ":NERDTreeFind<CR>", {})
keyset("n", "<leader>nn", ":NERDTree<CR>", {})

keyset("n", "<leader>tt", ":TagbarToggle<CR>", {})

keyset("n", "<leader>vv", ":vsplit<CR>", {})
keyset("n", "<leader>vh", ":split<CR>", {})
keyset("n", "<leader>oo", ":on<CR>", {})

keyset("n", "<leader>hh", ":wincmd h<CR>", {})
keyset("n", "<leader>jj", ":wincmd j<CR>", {})
keyset("n", "<leader>kk", ":wincmd k<CR>", {})
keyset("n", "<leader>ll", ":wincmd l<CR>", {})

keyset("n", "<leader>w", ":w<CR>", {})
keyset("n", "<leader>q", ":q<CR>", {})

keyset("n", "<leader>bn", ":bn<CR>", {})
keyset("n", "<leader>bN", ":bp<CR>", {})
keyset("n", "<leader>bd", ":bd<CR>", {})

-- Formatting selected code
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {})

--Coc hide when bugged screnn
keyset("n", "<leader>ch", ":call coc#util#float_hide()<CR>", {})
--nmap <silent>gd <Plug>(coc-definition)

--LATEX
--nmap <Leader>lt :CompileOpenPdfLatex<CR>
--nmap <Leader>lt :VimtexCompile<CR>:VimtexView<CR>
keyset("n", "<leader>lv", ":VimtextView<CR>", {})
keyset("n", "<leader>lc", ":VimtextClean<CR>", {})
keyset("n", "<leader>lh", ":VimtextTocOpen<CR>", {})

--MARKDOWN
keyset("n", "<leader>mt", "<Plug>MarkdownPreviewToggle", {})

-- JAVA ANT
--nmap <Leader>rr :!ant -find %:p:h/build.xml run<CR>

-- JAVA
--autocmd BufRead *.java set efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
--autocmd BufRead set makeprg=ant\ -find\ build.xml
--autocmd Filetype java set makeprg=javac\ %
--autocmd FileType java setlocal omnifunc=javacomplete#Complete

-- JAVA MAVEN
--nmap <Leader>p :make<CR>
--nmap <Leader>r :!java -jar target/%:t:r.jar<CR>
--nmap <Leader>mq :MavenQuickstart<Space>

-- JAVA DEBUG
--nmap <Leader>d :CocCommand java.debug.vimspector.start<CR>
--nmap <Leader>db :call vimspector#ToggleBreakpoint()<CR>

-- Tests
-- Run tests on nearest test to the cursor
keyset("n", "<leader>tn", ":TestNearest<CR>", {})
-- Run tests on entire file
keyset("n", "<leader>tf", ":TestFile<CR>", {})
-- Run tests on entire project
keyset("n", "<leader>tt", ":TestSuite<CR>", {})
-- Visits tests file
keyset("n", "<leader>tv", ":TestVisit<CR>", {})

keyset("n", "<leader>al", ":AirlineRefresh<CR>:NERDTreeFind<CR>q", {})

---@diagnostic disable-next-line: redefined-local
local opts = { silent = true, nowait = true, expr = true }
keyset("n", "<C-j>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-j>"', opts)
keyset("n", "<C-k>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-k>"', opts)
keyset("i", "<C-j>",
	'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-k>",
	'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-j>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-j>"', opts)
keyset("v", "<C-k>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-k>"', opts)

---@diagnostic disable-next-line: redefined-local
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

local syntax_group = vim.api.nvim_create_augroup("SyntaxSettings", { clear = true })

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.tsx",
	command = "set filetype=typescriptreact",
	group = syntax_group
})

-- Copilot
--imap  <silent><script><expr> <C-Space> copilot#Accept("\<CR>")
