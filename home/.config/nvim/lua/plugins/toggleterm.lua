return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		keys = {
			{
				"<C-/>",
			},
		},
		opts = {
			direction = "float",
			shell = "zsh",
			size = vim.o.columns * 0.382,
			open_mapping = [[<C-/>]],
		},
	},
}
