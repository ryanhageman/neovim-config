return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = {
        enable = true,
        disable = { "ruby" },
      },
      folding = {
        enable = true,
        filetype_exclude = {},
        ignore_current_line = true,
        disable = {},
        foldmethod = "expr",
        foldexpr = "nvim_treesitter#foldexpr()",
      },
    })
  end,
}
