return function(_)
	-- Loads all the descriptions for which-key tabs
	local wc = require("which-key")
	wc.add({
		-- Categories
		{ "<leader>g", group = "Git" },
		{ "<leader>f", group = "Find" },
		{ "<leader>b", group = "Buffer" },
		{ "<leader>t", group = "Terminal" },
		{ "<leader>d", group = "Debugger" },
		{ "<leader>c", group = "Code" },
		-- Find icons
		{ "<leader>ff", icon = { icon = "󰱼", color = "green" } },
		{ "<leader>/", icon = { icon = "󰊠", color = "green" } },
		{ "<leader>fb", icon = { icon = "󰓩", color = "green" } },
		{ "<leader>fh", icon = { icon = "󰋖", color = "green" } },
	})
end
