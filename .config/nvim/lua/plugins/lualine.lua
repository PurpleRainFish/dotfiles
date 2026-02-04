return {
	"nvim-lualine/lualine.nvim",
	event = "BufEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "auto",
			component_separators = { left = "", right = "" },
		},
		sections = {
			lualine_c = {
				"filename",
				"filesize",
				"selectioncount",
				"windows",
				"lsp_status",
			},
			lualine_x = { "encoding", "filetype" },
		},
	},
}
