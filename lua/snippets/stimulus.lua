local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- ── JavaScript Snippets ─────────────────────────────────────────────

local stimulus_controller_snippet = s({ trig = "stcont", desc = "Stimulus Controller" }, {
  t({
    "import { Controller } from '@hotwired/stimulus'",
    "",
    "export default class extends Controller {",
    "  ",
  }),
  i(1),
  t({ "", "}" }),
})

-- ── HTML Snippets ───────────────────────────────────────────────────

local data_controller_snippet =
    s({ trig = "dcon", desc = "data-controller for Stimulus" }, fmt('data-controller="{}"', i(1, "controller-name")))

return {
  stimulus_controller_snippet = stimulus_controller_snippet,
  data_controller_snippet = data_controller_snippet,
}
