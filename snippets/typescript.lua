local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- ── Stimulus ────────────────────────────────────────────────────────

local stimulus_controller_snippet = s({ trig = "controller", desc = "Stimulus Controller" }, {
	t({
		"import { Controller } from '@hotwired/stimulus'",
		"",
		"export default class extends Controller {",
		"  ",
	}),
	i(1),
	t({ "", "}" }),
})

return {
	stimulus_controller_snippet,
}

