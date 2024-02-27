return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		config = function()
			vim.keymap.set("n", "<leader>gl", "<cmd>LazyGit<CR>", { desc = "LazyGit" })
		end,
	},
}
