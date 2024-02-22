return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		{ "nvim-telescope/telescope.nvim" },
	},
	config = function()
		require("neoclip").setup()


		vim.keymap.set("n", "<leader>sc", "<CMD>Telescope neoclip<CR>", { desc = "clippings" })
	end,
}
