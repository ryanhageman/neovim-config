local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- ── JavaScript Snippets ─────────────────────────────────────────────

local stimulus_controller_snippet = s({ trig = "stimcont", desc = "Stimulus Controller" }, {
	t({
		"import { Controller } from '@hotwired/stimulus'",
		"",
		"export default class extends Controller {",
		"  ",
	}),
	i(1),
	t({ "", "}" }),
})

local stimulus_targets_snippet = s({ trig = "stimtarg", desc = "Stimulus Targets" }, {
	t({ "static targets = [ '" }),
	i(1),
	t({ "' ]" }),
})

local stimulus_values_snippet = s({ trig = "stimval", desc = "Stimulus Values" }, {
	t({ "static values = { ", "  " }),
	i(1, "name"),
	t({ ": " }),
	i(2, "type"),
	t({ "", "}" }),
})

local stimulus_outlets_snippet = s({ trig = "stimoutlet", desc = "Stimulus Outlets" }, {
	t({ "static outlets = [ '" }),
	i(1),
	t({ "' ]" }),
})

local stimulus_classes_snippet = s({ trig = "stimclasses", desc = "Stimulus Classes" }, {
	t({ "static classes = [ '" }),
	i(1),
	t({ "' ]" }),
})

-- ── HTML Snippets ───────────────────────────────────────────────────

local data_controller_snippet = s(
	{ trig = "stimdcont", desc = "data-controller for Stimulus" },
	fmt('data-controller="{}"', i(1, "[controller-name]"))
)

local data_action_snippet = s(
	{ trig = "stimdaction", desc = "data-action for Stimulus" },
	fmt('data-action="{}"', i(1, "[action->controller#method]"))
)

local data_target_snippet = s(
	{ trig = "stimdtarget", desc = "data-target for Stimulus" },
	fmt('data-{}-target="{}"', { i(1, "[controller-name]"), i(2, "[target-name]") })
)

local data_value_snippet = s(
	{ trig = "stimdvalue", desc = "data-value for Stimulus" },
	fmt('data-{}-{}-value="{}"', { i(1, "[controller-name]"), i(2, "[value-name]"), i(3, "[value]") })
)

return {
	stimulus_controller_snippet = stimulus_controller_snippet,
	stimulus_targets_snippet = stimulus_targets_snippet,
	stimulus_values_snippet = stimulus_values_snippet,
	stimulus_outlets_snippet = stimulus_outlets_snippet,
	stimulus_classes_snippet = stimulus_classes_snippet,
	data_controller_snippet = data_controller_snippet,
	data_action_snippet = data_action_snippet,
	data_target_snippet = data_target_snippet,
	data_value_snippet = data_value_snippet,
}
