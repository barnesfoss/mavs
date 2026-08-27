return function(self)
	for _, config in pairs(self.debuggers) do
		require(self.namespace .. ".debugger." .. config)
	end
end
