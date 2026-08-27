return {
	"mfussenegger/nvim-dap",
	keys = {
		{ "<leader>db", [[:DapToggleBreakpoint<CR>]], desc = "Toggle Breakpoint" },
		{ "<leader>do", [[:DapStepOver<CR>]], desc = "Step Over" },
		{ "<leader>di", [[:DapStepInto<CR>]], desc = "Step Into" },
		{ "<leader>ds", [[:DapNew<CR>]], desc = "Start Debugger" },
		{ "<leader>dc", [[:DapContinue<CR>]], desc = "Continue Running" },
	},
}
