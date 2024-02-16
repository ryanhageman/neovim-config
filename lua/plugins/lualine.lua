local lsp_servers = require("../ryan/lsp_servers")

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox-material",
				component_separators = "|",
				section_separators = { left = "", right = "" },
				globalstatus = true,
				disabled_filetypes = {
					winbar = { "neo-tree", "alpha" },
				},
			},

			tabline = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = { { "buffers", show_modified_status = true } },
				lualine_z = { { "tabs", separator = { right = "" }, left_padding = 2 } },
			},

			winbar = {
				lualine_a = {},
				lualine_b = {
					{ "filetype", separator = { left = "" }, right_padding = 2 },
					{
						"filename",
						path = 4,
						file_status = true,
						symbols = {
							modified = "●",
						},
					},
				},
				lualine_c = { "%{%v:lua.require'nvim-navic'.get_location()%}" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},

			inactive_winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},

			sections = {
				lualine_a = { { "mode", separator = { left = "" }, left_padding = 2 } },
				lualine_b = { "filetype" },
				lualine_c = {
					{
						"filename",
						path = 4,
						file_status = true,
						symbols = {
							modified = "●",
						},
					},
				},
				lualine_x = {
					{
						lsp_servers,
					},
					"diff",
					"diagnostics",
					"branch",
				},
				lualine_y = { "progress" },
				lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
			},

			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
