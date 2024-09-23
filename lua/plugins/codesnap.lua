return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  keys = {
    { "<leader>csc", "<cmd>CodeSnap<cr>",     mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>css", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot on the Desktop" },
  },
  opts = {
    save_path = "~/Desktop",
    -- has_breadcrumbs = true,
    bg_theme = "sea",
    watermark = "",

    -- ── For Keynotes ────────────────────────────────────────────────────
    bg_padding = 0,
    has_breadcrumbs = false,
  },
}
