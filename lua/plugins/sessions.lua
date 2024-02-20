return {
	"gennaro-tedesco/nvim-possession",
	dependencies = {
		"ibhagwan/fzf-lua",
	},
	config = true,
	init = function()
		local possession = require("nvim-possession")

		vim.keymap.set("n", "<leader>sl", function()
			possession.list()
		end, { desc = "list sessions" })
		vim.keymap.set("n", "<leader>sn", function()
			possession.new()
		end, { desc = "new session" })
		vim.keymap.set("n", "<leader>su", function()
			possession.update()
		end, { desc = "update session" })
		vim.keymap.set("n", "<leader>sd", function()
			possession.delete()
		end, { desc = "delete session" })
	end,
}
