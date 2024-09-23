return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts

	config = function()
		require("oil").setup({
			vim.keymap.set("n", "<leader>fb", "<cmd>Oil<CR>", { desc = "Oil" }),
		})
	end,
}
