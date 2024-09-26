return {
	"MunsMan/kitty-navigator.nvim",
	config = function()
		local kitty_navigator = require("kitty-navigator")

		vim.keymap.set("n", "<C-h>", kitty_navigator.navigateLeft, { silent = true })
		vim.keymap.set("n", "<C-l>", kitty_navigator.navigateRight, { silent = true })
		vim.keymap.set("n", "<C-k>", kitty_navigator.navigateUp, { silent = true })
		vim.keymap.set("n", "<C-j>", kitty_navigator.navigateDown, { silent = true })
	end,
}
