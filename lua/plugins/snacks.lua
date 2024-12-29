local splash = require("plugins.dashboard.splash")

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,

	opts = {
		bigfile = { enabled = true },
		dashboard = {
			enabled = true,
			preset = {
				header = splash.jolly_roger(),
			},
			{
				sections = {
					{ section = "header", splash.jolly_roger() },
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup" },
				},
			},
		},
		dim = {},
		indent = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},

	keys = {
		{ "<leader>bzd", function() Snacks.dim() end, desc = "Dim", },
		{ "<leader>bzu", function() Snacks.dim.disable() end, desc = "unDim", },
    { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },
	},
}
