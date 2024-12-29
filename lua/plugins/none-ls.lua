local autoformat_filetypes = {
	javascript = true,
	javascriptreact = true,
	typescript = true,
	typescriptreact = true,
	lua = false,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local function should_format(filetype)
	return autoformat_filetypes[filetype] or false
end

local function autoformat(client, bufnr)
	local filetype = vim.bo[bufnr].filetype

	if client.supports_method("textDocument/formatting") and should_format(filetype) then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end
end

-- ── Setup ───────────────────────────────────────────────────────────

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua --
				null_ls.builtins.formatting.stylua,

				-- Ruby --
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.formatting.erb_format,

				-- JavaScript --
				null_ls.builtins.formatting.prettier,

				-- Python --
				null_ls.builtins.formatting.black,
			},

			on_attach = function(client, bufnr)
				autoformat(client, bufnr)
			end,
		})
	end,
}
