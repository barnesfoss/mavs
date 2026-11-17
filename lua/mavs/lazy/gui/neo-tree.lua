return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
		"alessandropietrobelli/dotnet-tree.nvim",
	},
	lazy = false,
	keys = {
		{ "<leader>e", ":Neotree toggle<CR>", desc = "Toggle file explorer" },
	},
}
