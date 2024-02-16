return {
	{
		"ggandor/leap.nvim", -- Quick navigation around the buffer
		name = "leap",
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"ggandor/flit.nvim",
		config = function()
			require("flit").setup({})
		end,
	},
}
