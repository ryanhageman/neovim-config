return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",

    -- Adapters --
    "nvim-neotest/neotest-python",
  },
  keys = {
    { "<leader>tt", "<cmd>lua require('neotest').run.run()<cr>",                   desc = "Run current test" },
    { "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run current file" },
    { "<leader>ta", "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<cr>",    desc = "Run all tests" },
    { "<leader>to", "<cmd>lua require('neotest').output_panel.toggle()<cr>",       desc = "Output Panel" },
    { "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>",            desc = "Summary Panel" },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python"),
      },
    })
  end,
}
