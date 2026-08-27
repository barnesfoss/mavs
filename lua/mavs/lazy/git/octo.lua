return {
	"pwntester/octo.nvim",
	cmd = "Octo",
	opts = {
		-- or "fzf-lua" or "snacks" or "default"
		picker = "telescope",
		-- bare Octo command opens picker of commands
		enable_builtin = true,
	},
	keys = {
		{
			"<leader>gi",
			"<CMD>Octo issue list<CR>",
			desc = "Issues",
		},
		{
			"<leader>gp",
			"<CMD>Octo pr list<CR>",
			desc = "Pull Requests",
		},
		{
			"<leader>gd",
			"<CMD>Octo discussion list<CR>",
			desc = "Discussions",
		},
		{
			"<leader>gn",
			"<CMD>Octo notification list<CR>",
			desc = "Notifications",
		},
		{
			"<leader>gs",
			function()
				require("octo.utils").create_base_search_command({ include_current_repo = true })
			end,
			desc = "Search",
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons",
	},
}
