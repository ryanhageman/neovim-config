return {
	"goolord/alpha-nvim",
	event = "VimEnter", -- load plugin after all configuration is set
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local splash = require("plugins.dashboard.splash")

		dashboard.section.header.val = splash.jolly_roger()

		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		local possession = require("nvim-possession")

		-- Set menu
		dashboard.section.buttons.val = {
			-- dashboard.button("SPC j", "󰈚   Restore Session", ":SessionRestore<cr>"),
			dashboard.button("p", "🏄   Projects", ":Telescope projects<CR>"),
			dashboard.button("s", "☕   Sessions", function()
				possession.list()
			end),
			dashboard.button("r", "⌛   Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("f", "🔍   Find file", ":Telescope find_files<CR>"),
			dashboard.button("n", "📘   Notebook", ":ObsidianQuickSwitch<CR>"),
			dashboard.button("c", "🛠️   Config", ":e $MYVIMRC <CR>"),
			dashboard.button("q", "🍷   Quit NVIM", ":qa<CR>"),
		}

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local count = (math.floor(stats.startuptime * 100) / 100)
				dashboard.section.footer.val = {
					"󱐌 " .. stats.count .. " plugins loaded in " .. count .. " ms",
				}
				pcall(vim.cmd.AlphaRedraw)
			end,
		})

		vim.keymap.set("n", "<leader>x", "<cmd>Alpha<CR>", { desc = "Dashboard" })
	end,
}
