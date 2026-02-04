return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		spec = {
			mode = { "n", "v" },
			{ "<leader>b", group = "Buffer", icon = " " },
			{ "<leader>c", group = "Code", icon = " " },
			{ "<leader>g", group = "Go to", icon = " " },
			{ "<leader>d", group = "Debug" },
			{ "<leader>f", group = "Find" },
			{ "<leader>u", group = "Ui", icon = "󰍗 " },
			{ "<leader>l", icon = "󰒲 " },
			{ "<leader>o", group = "Overseer", icon = " " },
			{ "<leader>-", icon = " " },
			{ "<leader>e", icon = " " },
			{ "<leader>t", icon = " " },
			{ "<leader>p", group = "Preview", icon = " " },
		},
		preset = "modern",
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
