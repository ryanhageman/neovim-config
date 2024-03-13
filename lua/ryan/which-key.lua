local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local setup = {
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
			motions = true, -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = true, -- bindings for prefixed with g
		},
	},

	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	-- operators = { gc = "Comments" },

	key_labels = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- ["<space>"] = "SPC",
		-- ["<cr>"] = "RET",
		-- ["<tab>"] = "TAB",
	},

	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},

	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},

	window = {
		border = "rounded", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0,
	},

	layout = {
		height = { min = 4, max = 25 }, -- min and max height of the columns
		width = { min = 20, max = 50 }, -- min and max width of the columns
		spacing = 3, -- spacing between columns
		align = "left", -- align columns left, center or right
	},

	ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
	show_help = true, -- show help message on the command line when the popup is visible

	triggers = "auto", -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specify a list manually
	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		-- this is mostly relevant for key maps that start with a native binding
		-- most people should not need to change this
		i = { "j", "k" },
		v = { "j", "k" },
	},
}

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
	-- Ignore List --

	j = { "which_key_ignore" },
	k = { "which_key_ignore" },
	y = { "which_key_ignore" },
	Y = { "which_key_ignore" },

	-- General Stuff --
	["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
	["q"] = { "<cmd>q!<CR>", "Quit" },

	-- Buffers --
	b = {
		name = "Buffers",
		-- d = { "<cmd>bp<CR><cmd>bd #<CR>", "delete buffer" },
		d = { "<cmd>Bdelete<CR>", "delete buffer" },
		D = { "<cmd>%bd|e#|bd#<CR>", "delete all other buffers" },
		t = "Trouble",
		w = { "<cmd>set wrap!<CR>", "toggle [w]rap" },
		z = "Zen Mode",
	},

	-- Code (LSP) --
	c = {
		name = "Code (LSP)",
		a = "actions",
		D = "type [D]efinition",
		f = "format",
		r = "rename",

		w = {
			name = "Workspace",
			a = "add folder",
			r = "remove folder",
			l = "list folders",
		},
	},

	-- Debug --
	d = {
		name = "Debug",

		s = { name = "Step" },
		w = { name = "Widgets" },
	},

	-- File Tree --
	e = "File Tree",

	-- Files --
	f = {
		name = "File",
		s = { "<cmd>w<CR>", "save" },
		S = { "<cmd>wa<CR>", "save ALL the buffers" },
	},

	g = { name = "Git" },

	n = {
		name = "Obsidian",
		c = { "check the box" },
	},

	-- Projects --
	p = {
		name = "Projects",
		t = "Trouble",
		v = "Virtual Env (Python)",
	},

	-- Search --
	s = { name = "Search" },

	-- Sessions --
	S = { name = "Sessions" },

	-- Tests --

	t = { name = "Tests" },

	-- Window --
	w = {
		name = "Window",
		d = { "<C-w>q", "delete a window" },
		o = { "<C-w>o", "close other windows" },
		q = { "<C-w>q", "quit a window" },
		s = { "<C-w>s", "split a window" },
		v = { "<C-w>v", "vertical split window" },
		T = { "<C-w>T", "break out into a new [T]ab" },
		w = { "<C-w>w", "switch windows" },
		x = { "<C-w>x", "swap current with next" },
	},
}

which_key.setup()
which_key.register(mappings, opts)
