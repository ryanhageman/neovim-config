return {
	"gennaro-tedesco/nvim-possession",
	dependencies = {
		"ibhagwan/fzf-lua",
	},
	config = true,
	init = function()
		local possession = require("nvim-possession")

		vim.keymap.set("n", "<leader>Sl", function()
			possession.list()
		end, { desc = "list sessions" })
		vim.keymap.set("n", "<leader>Sn", function()
			possession.new()
		end, { desc = "new session" })
		vim.keymap.set("n", "<leader>Su", function()
			possession.update()
		end, { desc = "update session" })
		vim.keymap.set("n", "<leader>Sd", function()
			possession.delete()
		end, { desc = "delete session" })
	end,
}
