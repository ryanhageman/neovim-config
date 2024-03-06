local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fmta = require("luasnip.extras.fmt").fmta

return {
	-- Log Entry --
	s(
		{ trig = "log", desc = "h2 with a timestamp" },
		fmta("## <timestamp> - <title>", {
			timestamp = f(function()
				return os.date("%I:%M %p")
			end, {}),
			title = i(0),
		})
	),

	-- Check Box --
	s({ trig = "xchk", desc = "markdown checkbox" }, t("- [ ] ")),

	-- Wiki Link --
	s(
		{ trig = "wiki", desc = "add a wiki link" },
		fmta("[[<link_name>]]", {
			link_name = i(1),
		})
	),
}
