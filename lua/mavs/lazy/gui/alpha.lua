return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-mini/mini.icons", "amansingh-afk/milli.nvim" },
	lazy = false,
	opts = { splash = "blackhole", loop = true },
	config = function(_, opts)
		local dashboard = require("alpha.themes.startify")
		local alpha = require("alpha")
		local milli = require("milli")
		local splash = milli.load({
			splash = "blackhole",
		})

		dashboard.section.header.val = splash.frames[1]
		alpha.setup(dashboard.config)
		milli.alpha({
			splash = "blackhole",
			loop = true,
		})
	end,
}
