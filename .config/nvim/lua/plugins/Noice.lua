return {
	"folke/noice.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>n",
			"<cmd>NoiceHistory<cr>",
			desc = "Noice History",
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				timeout = 3000,
				stages = "static",
				render = "wrapped-compact",
				max_width = 40,
				top_down = false,
			},
		},
	},
	config = function()
		require("noice").setup({
			routes = {
				{
					filter = { event = "msg_show", find = "SUCCESS" },
					opts = { skip = true },
				},
			},
		})
	end,
}
