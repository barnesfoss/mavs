-- Adds support for nvim-lspconfig
return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		-- Preconfigurations for nvim's lsp
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup()
	end,
}
