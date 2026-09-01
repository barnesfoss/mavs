local opt = {
	number = true,
	relativenumber = false,
	mouse = "a",
	clipboard = "unnamedplus",
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	smartindent = true,
	termguicolors = true,
	cursorline = true,
	signcolumn = "yes",
	wrap = false,
	ignorecase = true,
	smartcase = true,
	updatetime = 250,
	timeoutlen = 300,
	showmode = false,
	cmdheight = 0,
	laststatus = 3,
}

local g = {
	mapleader = " ",
	maplocalleader = " ",
}

for i, v in pairs(opt) do
	vim.opt[i] = v
end
for i, v in pairs(g) do
	vim.g[i] = v
end

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
