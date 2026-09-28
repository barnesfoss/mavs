-- Initialzes all of the utilities
local load = {
	"debuggers",
	"whichkey",
	"misc",
}
return function(self)
	for _, util in pairs(load) do
		require(self.namespace .. ".util." .. util)(self)
	end
end
