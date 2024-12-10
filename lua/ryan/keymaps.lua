vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move block down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move block up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "cursor stays on append line" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "cursor in middle on page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "cursor in middle on page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "search stays in the middle" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "search stays in the middle" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "keep your yanked text when replacing stuff" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to the system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "yank to the system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete to the void" })

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Ctrl+c escapes in insert mode" })

vim.keymap.set("n", "Q", "<nop>", { desc = "saves you from Q, it's a scary place" })

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "quick fix navigation" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "quick fix navigation" })

vim.keymap.set(
	"n",
	"<leader>bs",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "substitute the word you're on" }
)

-- Resize with arrows -- 
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { desc = "resize up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { desc = "resize down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "resize left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "resize right" })
