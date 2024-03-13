return {
	"kevinhwang91/nvim-ufo",
	dependencies = "kevinhwang91/promise-async",

	config = function()
		vim.o.foldcolumn = "1" -- '0' is not bad
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})

    vim.keymap.set( "n", "zR", "<cmd>lua require('ufo').openAllFolds<CR>", { desc = "open all folds" } )
    vim.keymap.set( "n", "zM", "<cmd>lua require('ufo').closeAllFolds<CR>", { desc = "close all folds" } )
	end,
}
