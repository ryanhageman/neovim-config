return {
	"stevearc/oil.nvim",

	config = function()
		require("oil").setup({
			vim.keymap.set("n", "<leader>fb", "<cmd>Oil<CR>", { desc = "Oil" }),
		})
	end,
}
