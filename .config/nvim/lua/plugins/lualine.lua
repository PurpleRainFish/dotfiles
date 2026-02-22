return {
	"nvim-lualine/lualine.nvim",
	event = "BufEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "auto",
			component_separators = { left = "", right = "" }, -- 分隔块的字符
		},
		sections = {
			lualine_c = {
				"filename",
				"filesize",
				"lsp_status",
			},
			lualine_x = {
				{
					require("noice").api.status.mode.get,
					cond = require("noice").api.status.mode.has,
				},
				"encoding",
				"filetype",
			},
		},
	},
}
