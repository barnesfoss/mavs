return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				treesitter = true,
				telescope = true,
				native_lsp = {
					enabled = true,
				},
				which_key = true,
				mason = true,
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
