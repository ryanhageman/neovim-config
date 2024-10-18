local M = {}
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local lspconfig = require("lspconfig")
  local navic = require("nvim-navic")

function M.cssls_setup()
  -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
  -- local lspconfig = require("lspconfig")
  -- local navic = require("nvim-navic")

  lspconfig.cssls.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end,
  })
end

function M.css_variables_setup()
  lspconfig.css_variables.setup({
    settings = {
      cssVariables = {
        blacklistFolders = {
          "**/.cache",
          "**/.DS_Store",
          "**/.git",
          "**/.hg",
          "**/.next",
          "**/.svn",
          "**/bower_components",
          "**/CVS",
          "**/dist",
          "**/node_modules",
          "**/tests",
          "**/tmp",
          "**/Library/**",
          "**/Documents/**",
          "**/Downloads/**",
          "**/Desktop/**",
          "**/Dropbox/**",
          "**/Google Drive/**",
          "**/iCloud Drive/**",
          "**/.Trash/**",
        },
      },
    },
  })
end

return M
