return {
	"HiPhish/rainbow-delimiters.nvim",
	event = "VeryLazy",
	opts = {},
	config = function(_, opts)
		require("rainbow-delimiters.setup").setup(opts)
	end,
}
