return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"python",
			"latex",
			"markdown",
			"markdown_inline",
			"typst",
			"c",
			"jsonc",
			"json",
			"css",
		},
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
