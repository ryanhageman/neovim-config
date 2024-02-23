return {
  "Pocco81/true-zen.nvim",
  config = function()
    require("true-zen").setup({
      integrations = {
        twilight = true, -- enable twilight (ataraxis)
        lualine = true, -- hide nvim-lualine (ataraxis)
      },
    })

    vim.keymap.set("n", "<leader>bzn", "<cmd>TZNarrow<CR>", { desc = "zen [n]arrow" })
    vim.keymap.set("v", "<leader>bzn", "<cmd>'<,'>TZNarrow<CR>", { desc = "zen [n]arrow" })
    vim.keymap.set("n", "<leader>bzf", "<cmd>TZFocus<CR>", { desc = "zen [f]ocus" })
    vim.keymap.set("n", "<leader>bzm", "<cmd>TZMinimalist<CR>", { desc = "zen [m]inimalist" })
    vim.keymap.set("n", "<leader>bza", "<cmd>TZAtaraxis<CR>", { desc = "[a]taraxis (zen mode)" })
  end,
}
