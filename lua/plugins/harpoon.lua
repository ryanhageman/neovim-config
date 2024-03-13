return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("harpoon").setup()

		vim.keymap.set(
			"n",
			"<leader>.",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "Harpoon List" }
		)
		vim.keymap.set("n", "<leader>ba", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Harpoon Add" })
	end,
}
