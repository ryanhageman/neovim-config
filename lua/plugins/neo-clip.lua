return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		{ "nvim-telescope/telescope.nvim" },
		{ "kkharji/sqlite.lua", module = "sqlite" },
	},
	config = function()
		require("neoclip").setup({
			enable_persistent_history = true,
		})

		vim.keymap.set("n", "<leader>sc", "<CMD>Telescope neoclip<CR>", { desc = "clippings" })
	end,
}
