return {
	"catppuccin/nvim",
	-- event = "BufReadPre",
	name = "catppuccin",
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}
