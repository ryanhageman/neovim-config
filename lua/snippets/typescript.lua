local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local stimulus = require("snippets.stimulus")

local console_log = s({ trig = "clg", desc = "console log" }, {
	t({ "console.log(`" }),
	i(1),
	t({ "`)" }),
})

return {
	console_log,
	stimulus.stimulus_controller_snippet,
	stimulus.stimulus_targets_snippet,
	stimulus.stimulus_values_snippet,
	stimulus.stimulus_outlets_snippet,
	stimulus.stimulus_classes_snippet,
}
