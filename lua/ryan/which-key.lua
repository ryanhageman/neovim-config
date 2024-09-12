local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local mappings = {
	-- ── Hide From Popup Menu ────────────────────────────────────────────
	{ "<leader>j", hidden = true, nowait = true, remap = false },
	{ "<leader>k", hidden = true, nowait = true, remap = false },
	{ "<leader>Y", hidden = true, nowait = true, remap = false },
	{ "<leader>y", hidden = true, nowait = true, remap = false },

	-- ── General Stuff ───────────────────────────────────────────────────
	{ "<leader>h", "<cmd>nohlsearch<CR>", desc = "No Highlight", nowait = true, remap = false },
	{ "<leader>q", "<cmd>q!<CR>", desc = "Quit", nowait = true, remap = false },

	-- ── Buffers ─────────────────────────────────────────────────────────
	{ "<leader>b", group = "Buffers", nowait = true, remap = false },
	{ "<leader>bd", "<cmd>Bdelete<CR>", desc = "delete buffer", nowait = true, remap = false },
	{ "<leader>bD", "<cmd>%bd|e#|bd#<CR>", desc = "delete all other buffers", nowait = true, remap = false },
	{ "<leader>bt", desc = "Trouble", nowait = true, remap = false },
	{ "<leader>bw", "<cmd>set wrap!<CR>", desc = "toggle [w]rap", nowait = true, remap = false },
	{ "<leader>bz", desc = "Zen Mode", nowait = true, remap = false },

	-- ── Code ────────────────────────────────────────────────────────────
	{ "<leader>c", group = "Code (LSP)", nowait = true, remap = false },
	{ "<leader>c", desc = "code", mode = "v", nowait = true, remap = false },
	{ "<leader>cc", desc = "comments", mode = { "n", "v" }, nowait = true, remap = false },
	{ "<leader>ca", desc = "actions", nowait = true, remap = false },
	{ "<leader>cD", desc = "type [D]efinition", nowait = true, remap = false },
	{ "<leader>cf", desc = "format", nowait = true, remap = false },
	{ "<leader>cr", desc = "rename", nowait = true, remap = false },
	{ "<leader>cw", group = "Workspace", nowait = true, remap = false },
	{ "<leader>cwa", desc = "add folder", nowait = true, remap = false },
	{ "<leader>cwl", desc = "list folders", nowait = true, remap = false },
	{ "<leader>cwr", desc = "remove folder", nowait = true, remap = false },

	-- ── Debug ───────────────────────────────────────────────────────────
	{ "<leader>d", group = "Debug", nowait = true, remap = false },
	{ "<leader>ds", group = "Step", nowait = true, remap = false },
	{ "<leader>dw", group = "Widgets", nowait = true, remap = false },

	-- ────────────────────────────── File Tree ──────────────────────────────
	{ "<leader>e", desc = "File Tree", nowait = true, remap = false },

	-- ── Files ───────────────────────────────────────────────────────────
	{ "<leader>f", group = "File", nowait = true, remap = false },
	{ "<leader>fs", "<cmd>w<CR>", desc = "save", nowait = true, remap = false },
	{ "<leader>fS", "<cmd>wa<CR>", desc = "save ALL the buffers", nowait = true, remap = false },

	-- ── Git ─────────────────────────────────────────────────────────────
	{ "<leader>g", group = "Git", nowait = true, remap = false },

	-- ── Notebook ────────────────────────────────────────────────────────
	{ "<leader>n", group = "Obsidian", nowait = true, remap = false },
	{ "<leader>nc", desc = "check the box", nowait = true, remap = false },

	-- ── Projects ────────────────────────────────────────────────────────
	{ "<leader>p", group = "Projects", nowait = true, remap = false },
	{ "<leader>pt", desc = "Trouble", nowait = true, remap = false },
	{ "<leader>pv", desc = "Virtual Env (Python)", nowait = true, remap = false },

	-- ── Search ──────────────────────────────────────────────────────────
	{ "<leader>s", group = "Search", nowait = true, remap = false },

	-- ── Sessions ────────────────────────────────────────────────────────
	{ "<leader>S", group = "Sessions", nowait = true, remap = false },

	-- ── Tests ───────────────────────────────────────────────────────────
	{ "<leader>t", group = "Tests", nowait = true, remap = false },

	-- ── Window ──────────────────────────────────────────────────────────
	{ "<leader>w", group = "Window", nowait = true, remap = false },
	{ "<leader>wd", "<C-w>q", desc = "delete a window", nowait = true, remap = false },
	{ "<leader>wo", "<C-w>o", desc = "close other windows", nowait = true, remap = false },
	{ "<leader>wq", "<C-w>q", desc = "quit a window", nowait = true, remap = false },
	{ "<leader>ws", "<C-w>s", desc = "split a window", nowait = true, remap = false },
	{ "<leader>wt", group = "Terminal", nowait = true, remap = false },
	{
		"<leader>wth",
		"<cmd>!kitty @ launch --type=window --cwd $(git rev-parse --show-toplevel || pwd) --location=hsplit<CR>",
		desc = "horizontal split terminal",
		nowait = true,
		remap = false,
	},
	{
		"<leader>wtv",
		"<cmd>!kitty @ launch --type=window --cwd $(git rev-parse --show-toplevel || pwd) --location=vsplit<CR>",
		desc = "vertical split terminal",
		nowait = true,
		remap = false,
	},
	{ "<leader>wT", "<C-w>T", desc = "break out into a new --[[ [T] ]]ab", nowait = true, remap = false },
	{ "<leader>wv", "<C-w>v", desc = "vertical split window", nowait = true, remap = false },
	{ "<leader>ww", "<C-w>w", desc = "switch windows", nowait = true, remap = false },
	{ "<leader>wx", "<C-w>x", desc = "swap current with next", nowait = true, remap = false },
}

which_key.setup()
which_key.add(mappings)
