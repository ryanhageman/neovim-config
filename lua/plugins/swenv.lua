return {
	"AckslD/swenv.nvim",
	keys = {
		{ "<leader>pva", "<cmd>lua require('swenv.api').auto_venv()<CR>", desc = "Auto Python venv" },
		{ "<leader>pvp", "<cmd>lua require('swenv.api').pick_venv()<CR>", desc = "Pick Python venv" },
		{ "<leader>pvg", "<cmd>lua require('swenv.api').get_current_venv()<CR>", desc = "Get and show current Python venv" },
		{ "<leader>pvs", "<cmd>lua require('swenv.api').set_venv('venv_fuzzy_name')<CR>", desc = "Set current Python venv" },
	},
}
