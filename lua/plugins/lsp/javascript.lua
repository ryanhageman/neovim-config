local M = {}

function M.setup()
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local lspconfig = require("lspconfig")
  local navic = require("nvim-navic")

  lspconfig.ts_ls.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end,
    settings = {
      javascript = {
        validate = {
          enable = true,
        },
      },
      typescript = {
        validate = {
          enable = true,
        },
      },
    },
  })
end

return M
