local M = {}

function M.setup()
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local lspconfig = require("lspconfig")
  local navic = require("nvim-navic")

  lspconfig.solargraph.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end,
  })
end

return M
