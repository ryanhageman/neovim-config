local splash = require("plugins.dashboard.splash")

local settings = {
	preset = {
		header = splash.jolly_roger(),
	},
	{
		sections = {
			{ section = "header" },
			{ section = "keys", gap = 1, padding = 1 },
			{ section = "startup" },
		},
	},
}

return settings
