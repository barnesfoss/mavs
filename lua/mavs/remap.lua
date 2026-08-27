return function(self)
	-- Bootstrap file to load all keymaps
	local maps = {
		"defaults", -- Default keybinds
	}
	for _, file in pairs(maps) do
		local data = require(self.namespace .. ".mappings." .. file)
		for _, keymap in pairs(data.mappings) do
			vim.keymap.set(unpack(keymap))
		end
		if data.autocommand then
			for event, settings in pairs(data.autocommand) do
				vim.api.nvim_create_autocmd(event, settings)
			end
		end
	end
end
