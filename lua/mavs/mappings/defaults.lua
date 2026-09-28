local set = vim.keymap.set
local buf = vim.lsp.buf
return {
	mappings = {
		{ "n", "<C-s>", ":w<CR>", { desc = "Save" } },
		{ "n", "<C-s>", ":w<CR>", { desc = "Save" } },
		{ "n", "<C-q>", ":q<CR>", { desc = "Quit" } },
		{ "n", "<Esc>", "<cmd>nohlsearch<CR>" },
		-- Windows
		{ "n", "<C-h>", "<C-w>h" },
		{ "n", "<C-j>", "<C-w>j" },
		{ "n", "<C-k>", "<C-w>k" },
		{ "n", "<C-l>", "<C-w>l" },
		-- Terminal
		{ "n", "<leader>tv", [[<cmd>vsplit | term<cr>A]], { desc = "Vertical" } },
		{ "n", "<leader>th", [[<cmd>split | term<cr>A]], { desc = "Horizontal" } },
		-- Paging
		{ "n", "<M-Up>", "<C-b>" },
		{ "n", "<M-Down>", "<C-f>" },
		-- Debugger
		{ "n", "<leader>du", require("dapui").toggle, { desc = "Toggle DapUI" } },
	},
	autocommand = {
		["LspAttach"] = {
			callback = function(event)
				set("n", "gd", buf.definition, { buffer = event.buf, desc = "Goto Definition" })
				set("n", "gr", buf.references, { buffer = event.buf, desc = "Goto References" })
				set("n", "K", buf.hover, { buffer = event.buf, desc = "Hover Info" })
				set("n", "<leader>cr", buf.rename, { buffer = event.buf, desc = "Rename" })
				set("n", "<leader>ca", buf.code_action, { buffer = event.buf, desc = "Action" })
				set("n", "<leader>cf", buf.format, { buffer = event.buf, desc = "Format" })
			end,
		},
	},
}
