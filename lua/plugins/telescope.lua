return {
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          path_display = {"truncate"}
        }
      })

			-- Extensions --
			telescope.load_extension("harpoon")
			telescope.load_extension("projects")

			-- Keymaps --
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "files" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "grep text" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "buffer" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "help" })
			vim.keymap.set("n", "<leader>sp", telescope.extensions.projects.projects, { desc = "projects" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
