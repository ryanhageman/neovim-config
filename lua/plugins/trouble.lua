return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("trouble").setup({
      height = 20,
    })

		-- Project --
		vim.keymap.set("n", "<leader>ptt", function()
			require("trouble").toggle()
		end, { desc = "trouble" })
		vim.keymap.set("n", "<leader>ptw", function()
			require("trouble").toggle("workspace_diagnostics")
		end, { desc = "workspace" })
		vim.keymap.set("n", "<leader>ptq", function()
			require("trouble").toggle("quickfix")
		end, { desc = "quickfix" })
		vim.keymap.set("n", "<leader>ptl", function()
			require("trouble").toggle("loclist")
		end, {desc="local list"})

		-- Buffer --
		vim.keymap.set("n", "<leader>btd", function()
			require("trouble").toggle("document_diagnostics")
		end, { desc = "diagnostics" })

    -- Code (LSP) --
		vim.keymap.set("n", "<leader>cR", function()
			require("trouble").toggle("lsp_references")
		end, {desc = "[R]eferences"})
	end,
}
