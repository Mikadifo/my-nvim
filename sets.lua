local set = vim.opt

set.wrap = false
set.number = true
set.mouse = "a"
set.numberwidth = 1
--opt.nohlsearch=true
set.clipboard:append("unnamedplus")
set.showcmd = true
set.ruler = true
set.encoding = "utf-8"
set.showmatch = true
set.colorcolumn = "84"
set.signcolumn = "yes"
set.sw = 4
set.scrolloff = 8
set.relativenumber = true
set.laststatus = 2
set.showmode = false
set.path = "**"
set.updatetime = 300
set.cmdheight = 2
set.shortmess:append("c")
-- opt.foldmethod=indent
-- opt.foldlevel=0
-- JAVA
set.errorformat = { "%A%f:%l:\\ %m", "%-Z%p^,%-C%.%#" }
--opt.makeprg=ant\ -find\ %:p:h/build.xml
--opt.makeprg=mvn\ clean\ package

-- COC
-- TextEdit might fail if hidden is not set.
set.hidden = true
-- Some servers have issues with backup files, see #649.
set.backup = false
set.writebackup = false

--Themes
if vim.fn.has("nvim") == 1 then
	vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = "1"
end

if vim.fn.has("termguicolors") == 1 then
	set.termguicolors = true
end
