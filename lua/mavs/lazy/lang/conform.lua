return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				meson = { "meson" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
