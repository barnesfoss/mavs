-- init.lua
-- you'll never guess what it does!
local self = {}

-- Lua namespace
-- This variable makes it easy to rename the entire config
self.namespace = "mavs"

-- Set the namespace to a lua global
-- This is for convenience
_G[self.namespace] = self

-- Makes it so you can also access it through vim.cfg (vim config)
vim.cfg = self

-- Stages and the order in which they are loaded
self.stage = {
	"settings",
	"lazy_init",
	"util",
	"remap",
}

-- Subdirectories under namespace.lazy to load plugins from
self.plugins = {
	"debugger",
	"git",
	"gui",
	"lang",
	"util",
}

-- Activated debugger configurations under namespace.debugger
self.debuggers = {
	"gdb",
}

-- Load said stages
for _, module in ipairs(self.stage) do
	module = require(self.namespace .. "." .. module)
	-- If the module returns a function we know it requires this module
	if type(module) == "function" then
		module(self)
	end
end
