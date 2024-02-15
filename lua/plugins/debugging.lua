return {
	"mfussenegger/nvim-dap",

	dependencies = {
		"rcarriga/nvim-dap-ui",

    -- NOTE: Add Debug Adapters Here --
	},

	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local widgets = require("dap.ui.widgets")

    -- Setup Debug Adapters --
		require("dapui").setup()

		-- UI --
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- ** Keymaps ** --

		-- Step --
		vim.keymap.set("n", "<Leader>dc", dap.continue, {})
		vim.keymap.set("n", "<Leader>dsn", dap.step_over, {})
		vim.keymap.set("n", "<Leader>dsi", dap.step_into, {})
		vim.keymap.set("n", "<Leader>dso", dap.step_out, {})

		-- Breakpoints --
		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dB", dap.set_breakpoint, {})

		-- Sections --
		vim.keymap.set("n", "<Leader>dr", dap.repl.open, {})
		vim.keymap.set("n", "<Leader>dl", dap.run_last, {})

		-- Widgets --
		vim.keymap.set({ "n", "v" }, "<Leader>dwh", widgets.hover, {})
		vim.keymap.set({ "n", "v" }, "<Leader>dwp", widgets.preview, {})
		vim.keymap.set("n", "<Leader>dwf", function()
			widgets.centered_float(widgets.frames)
		end, {})
		vim.keymap.set("n", "<Leader>dws", function()
			widgets.centered_float(widgets.scopes)
		end, {})
	end,
}
