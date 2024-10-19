local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local fmta = require("luasnip.extras.fmt").fmta

return {
  -- ── ERB output tag ──────────────────────────────────────────────────
  s({ trig = "puts", desc = "ERB output tag" }, {
    t("<%= "),
    i(1),
    t(" %>"),
  }),

  -- ── ERB execute without render tag ──────────────────────────────────
  s({ trig = "rtn", desc = "ERB execute without render tag" }, {
    t("<% "),
    i(1),
    t(" %>"),
  }),
}
