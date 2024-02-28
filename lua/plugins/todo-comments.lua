return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("todo-comments").setup({
      keywords = {
        TASK = { icon = " ", color = "info", alt = { "[ ]" } },
        QUESTION = { icon = " ", color = "info" },
        WAITING = { icon = " ", color = "warning" },
      },
      highlight = {
        comments_only = false,
      },
    })

    vim.keymap.set("n", "<leader>pT", "<cmd>TodoTrouble<CR>", { desc = "project [T]odos" })
  end,
}
