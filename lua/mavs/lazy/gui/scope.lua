return {
	"tiagovla/scope.nvim",
	config = function()
		require("scope").setup({})
	end,
	keys = {
		{ "<leader>bn", [[:bnext<CR>]], desc = "Next buffer" },
		{ "<leader>bp", [[:bprev<CR>]], desc = "Previous buffer" },
		{ "<leader>bd", [[:bd<CR>]], desc = "Delete current buffer" },
	},
}
