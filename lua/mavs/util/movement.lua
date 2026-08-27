return function(self)
	self.movement = {}
	local ns = require("neoscroll")
	function self.movement.pgup()
		ns.ctrl_u({ duration = 250, info = "cursorline" })
	end
	function self.movement.pgdn()
		ns.ctrl_d({ duration = 250, info = "cursorline" })
	end
end
