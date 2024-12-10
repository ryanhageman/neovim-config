return {
  -- ╭─────────────────────────────────────────────────────────╮
  -- │                          Mason                          │
  -- ╰─────────────────────────────────────────────────────────╯
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- ╭─────────────────────────────────────────────────────────╮
  -- │                    Mason LSP Config                     │
  -- ╰─────────────────────────────────────────────────────────╯
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls" },
      })
    end,
  },

  -- ╭─────────────────────────────────────────────────────────╮
  -- │                 Navic (top breadcrumbs)                 │
  -- ╰─────────────────────────────────────────────────────────╯
  {
    "SmiteshP/nvim-navic",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      local navic_settings = require("plugins.lsp.navic").settings()

      require("nvim-navic").setup(navic_settings)
    end,
  },

  -- ╭─────────────────────────────────────────────────────────╮
  -- │                     Nvim LSP Config                     │
  -- ╰─────────────────────────────────────────────────────────╯
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- ── Lua ─────────────────────────────────────────────────────────────
      local lua_lsp = require("plugins.lsp.lua")
      lua_lsp.setup()

      -- ── Ruby ────────────────────────────────────────────────────────────
      local ruby_lsp = require("plugins.lsp.ruby")
      ruby_lsp.setup()

      -- ── JavaScript / TypeScript ─────────────────────────────────────────
      local javascript_lsp = require("plugins.lsp.javascript")
      javascript_lsp.setup()

      -- ── Python ──────────────────────────────────────────────────────────
      local python_lsp = require("plugins.lsp.python")
      python_lsp.setup()

      -- ── HTML ────────────────────────────────────────────────────────────
      lspconfig.html.setup({})
      lspconfig.emmet_language_server.setup({})

      -- ── CSS ─────────────────────────────────────────────────────────────
      local css_lsp = require("plugins.lsp.css")
      css_lsp.cssls_setup()
      css_lsp.css_variables_setup()

      -- ── Tailwind ────────────────────────────────────────────────────────
      lspconfig.tailwindcss.setup({})

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

          -- Buffer local mappings.
          local opts = { buffer = ev.buf }
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          -- vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<leader>cwa", vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set("n", "<leader>cwr", vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set("n", "<leader>cwl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set("n", "<leader>cD", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts)
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>cf", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
        end,
      })
    end,
  },
}
