return {
	{
		"mfussenegger/nvim-dap",
		ft = { "python" },
		config = function() end,
	},
	{
		"rcarriga/nvim-dap-ui",
		ft = { "python" },
		dependencies = { "mfussenegger/nvim-dap", "theHamsta/nvim-dap-virtual-text", "nvim-neotest/nvim-nio" },
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				-- dapui.open()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				-- dapui.open()
			end
			vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "DAP: Toggle UI" })
			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = " Start/Continue" })
			vim.keymap.set("n", "<f5>", dap.continue, { desc = " Start/Continue" })
			require("dapui").setup({
				layouts = {
					{
						position = "left",
						size = 0.15,
						elements = {
							{ id = "stacks", size = 0.25 },
							{ id = "scopes", size = 0.25 },
							{ id = "breakpoints", size = 0.25 },
							{ id = "watches", size = 0.25 },
						},
					},
					{
						position = "right",
						size = 0.3,
						elements = {
							{ id = "console", size = 1 },
						},
					},
				},
			})
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = { "python" },
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
		end,
	},
}
