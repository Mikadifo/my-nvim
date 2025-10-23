local config_path = debug.getinfo(1, "S").source:sub(2)
local config_dir = vim.fn.fnamemodify(config_path, ":h")

-- Sets
dofile(config_dir .. "/sets.lua")
-- PLUGINS
dofile(config_dir .. "/plugins.lua")
-- Maps
dofile(config_dir .. "/maps.lua")

-- Clipboard provider yank only
local clip = "/mnt/c/Windows/System32/clip.exe"

if vim.fn.executable(clip) == 1 then
	vim.api.nvim_create_augroup("WSLYank", { clear = true })
	vim.api.nvim_create_autocmd("TextYankPost", {
		group = "WSLYank",
		callback = function()
			if vim.v.event.operator == 'y' then
				vim.fn.system('cat | ' .. clip, vim.fn.getreg('"'))
			end
		end
	})
end

-- SCHEME THEME
--vim.cmd("colorscheme gruvbox")
vim.cmd("colorscheme rose-pine")
--vim.g.lightline = { 'colorscheme': 'palenight' }
--vim.g.palenight_terminal_italics=1

-- IndentLine CONFIG
--vim.g.indentLine_setColors = 0
vim.g.indentLine_char_list = { "|", "¬¶", "‚îÜ", "‚îä" }
-- No mostrar en ciertos tipos de buffers y archivos
vim.g.indentLine_fileTypeExclude = { "text", "sh", "help", "terminal" }
vim.g.indentLine_bufNameExclude = { "NERD_tree.", "term:." }

-- MARKDOWN PREVIEW CONFIG
--vim.g.mkdp_auto_start = 1
vim.g.mkdp_echo_preview_url = 1
vim.g.mkdp_preview_options = {
	mkit = {},
	katex = {},
	uml = {},
	maid = {},
	sync_scroll_type = "relative",
	disable_filename = 1
}

vim.g.mkdp_page_title = "「${name}」"
vim.g.mkdp_filetypes = { "markdown" }
--MARKDOWN PREVIEW CONFIG END

vim.g.user_emmet_leader_key = ','

vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#fnamemod"] = ":t"
vim.g.airline_powerline_fonts = 0
vim.g.airline_theme = "rose-pine"
--vim.g.airline_theme='gruvbox'

-- Invertir direccion de navegacion (de arriba a abajo)
vim.g.SuperTabDefaultCompletionType = '<c-n>'

vim.g.echodoc_enable_at_startup = 1

vim.g.coc_snippet_next = '<tab>'
--vim.g.coc_snippet_prev = '<S-tab>'
vim.g.coc_global_extensions = {
	"coc-marketplace",
	"coc-snippets",
	"coc-vimtex",
	"coc-tsserver",
	"coc-json",
	"coc-java",
	"coc-pyright",
	"coc-prettier",
	"coc-java-debug",
	"coc-yaml",
	"coc-html",
	"coc-clangd",
	"coc-docker",
	"coc-go",
	"coc-sumneko-lua",
	"@yaegassy/coc-tailwindcss3",
	"@yaegassy/coc-astro",
}
-- "coc-pairs",
-- "coc-eslint",
-- "coc-phpls",

vim.g.tex_flavor = "latex"
vim.g.livepreview_previewer = "C:\\Program Files\\Adobe\\Acrobat DC\\Acrobat.exe"
--vim.g.vimtex_compiler_latexmk = {'continuous': 1}
--vim.g.vimtex_latexmk_options = '-pdf -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode'

--vim.g.UltiSnipsSnippetDirectories = ['UltiSnips']
-- Conflict tab with coc snippets
--vim.g.UltiSnipsExpandTrigger = ''
--vim.g.UltiSnipsJumpForwardTrigger = ''
--vim.g.UltiSnipsJumpBackwardTrigger = ''

--vim.g.oceanic_next_terminal_bold = 1
--vim.g.oceanic_next_terminal_italic = 1

--vim.g.vimspector_enable_mappings='HUMAN'

vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeShowHidden = 1

--Svelte
--vim.g.svelte_preprocessors = ['typescript']

--Haskell
vim.g.haskell_indent_disable = 1

--Copilot
--vim.g.copilot_no_tab_map = v:true

-- Python3
vim.g.python3_host_prog = "/usr/bin/python3"
