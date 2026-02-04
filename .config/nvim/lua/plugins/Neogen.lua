return {
	"danymat/neogen",
	keys = {
		{
			"<leader>cn",
			"<cmd>Neogen<cr>",
			desc = "Create Annotations",
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
}
