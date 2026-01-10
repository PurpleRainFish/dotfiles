return {
	"danymat/neogen",
	keys = {
		{
			"<leader>cn",
			"<cmd>Neogen<cr>",
			desc = "Neogen",
		},
	},
	config = true,
	opts = {
		languages = {
			python = {
				template = {
					annotation_convention = "numpydoc",
				},
			},
		},
	},
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}
