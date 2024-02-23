return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		require("neogit").setup()

		vim.keymap.set("n", "<leader>gs", "<cmd>Neogit<CR>", { desc = "git status" })
	end,
}
