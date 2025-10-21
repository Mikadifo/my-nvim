local opt = vim.opt

opt.number = true
opt.mouse = "a"
opt.numberwidth = 1
--opt.nohlsearch=true
opt.clipboard:append("unnamedplus")
opt.showcmd = true
opt.ruler = true
opt.encoding = "utf-8"
opt.showmatch = true
opt.colorcolumn = "80"
opt.signcolumn = "yes"
opt.sw = 4
opt.scrolloff = 8
opt.relativenumber = true
opt.laststatus = 2
opt.showmode = false
opt.path = "**"
opt.updatetime = 300
opt.cmdheight = 2
opt.shortmess:append("c")
-- opt.foldmethod=indent
-- opt.foldlevel=0
-- JAVA
opt.errorformat = { "%A%f:%l:\\ %m", "%-Z%p^,%-C%.%#" }
--opt.makeprg=ant\ -find\ %:p:h/build.xml
--opt.makeprg=mvn\ clean\ package

-- COC
-- TextEdit might fail if hidden is not set.
opt.hidden = true
-- Some servers have issues with backup files, see #649.
opt.backup = false
opt.writebackup = false

--Themes
if vim.fn.has("nvim") == 1 then
	vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = "1"
end

if vim.fn.has("termguicolors") == 1 then
	opt.termguicolors = true
end
