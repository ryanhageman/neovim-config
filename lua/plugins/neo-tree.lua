return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle reveal_force_cwd<CR>", { desc = "[e]xplorer" })
		vim.keymap.set("n", "<leader>be", ":Neotree buffers toggle<CR>", { desc = "buffer explorer" })
	end,
}
