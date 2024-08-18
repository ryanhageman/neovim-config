return {
	-- Commenting --
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},

	-- Comments Based on the current line --
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},

	-- Comment Box --
	{
		"LudoPinelli/comment-box.nvim",
		config = function()
			vim.keymap.set({ "n", "v" }, "<leader>ccb", "<cmd>CBlcbox<CR>", { desc = "comment box" })
			vim.keymap.set({ "n", "v" }, "<leader>ccl", "<cmd>CBlcline<CR>", { desc = "comment line" })
			vim.keymap.set({ "n", "v" }, "<leader>ccL", "<cmd>CBllline<CR>", { desc = "comment line (Left)" })
			vim.keymap.set({ "n", "v" }, "<leader>ccd", "<cmd>CBline<CR>", { desc = "divider line" })
			vim.keymap.set({ "n", "v" }, "<leader>ccs", "<cmd>CBllline2<CR>", { desc = "start curved line" })
			vim.keymap.set({ "n", "v" }, "<leader>cce", "<cmd>CBllline3<CR>", { desc = "end curved line" })
		end,
	},
}
