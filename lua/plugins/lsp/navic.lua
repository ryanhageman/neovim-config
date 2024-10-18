-- ╭─────────────────────────────────────────────────────────╮
-- │                          Navic                          │
-- ╰─────────────────────────────────────────────────────────╯

-- renders the breadcrumbs a the top of the screen showing you
-- where you are in the file ( in a function, arguments, etc )

local M = {}

local icons = {
	File = "󰈙 ",
	Module = " ",
	Namespace = "󰌗 ",
	Package = " ",
	Class = "󰌗 ",
	Method = "󰆧 ",
	Property = " ",
	Field = " ",
	Constructor = " ",
	Enum = "󰕘",
	Interface = "󰕘",
	Function = "󰊕 ",
	Variable = "󰆧 ",
	Constant = "󰏿 ",
	String = "󰀬 ",
	Number = "󰎠 ",
	Boolean = "◩ ",
	Array = "󰅪 ",
	Object = "󰅩 ",
	Key = "󰌋 ",
	Null = "󰟢 ",
	EnumMember = " ",
	Struct = "󰌗 ",
	Event = " ",
	Operator = "󰆕 ",
	TypeParameter = "󰊄 ",
}

local lsp_settings = {
	auto_attach = true,
	preference = nil,
}

function M.settings()
  return {
		icons = icons,
		lsp = lsp_settings,
		highlight = false,
		separator = " > ",
		depth_limit = 0,
		depth_limit_indicator = "..",
		safe_output = true,
		lazy_update_context = false,
		click = false,
		format_text = function(text)
			return text
		end,
  }
end

return M
