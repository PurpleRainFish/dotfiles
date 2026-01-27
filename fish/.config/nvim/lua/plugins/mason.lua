return {
	{
		"williamboman/mason.nvim",
		keys = {
			{
				"<leader>cm",
				"<cmd>Mason<cr>",
				desc = "Mason",
			},
		},
		event = { "BufReadPost", "BufNewFile", "VimEnter" },
		opts = {
			ensure_installed = { "lua_ls", "pyright", "ruff", "tinymist", "texlab", "clangd", "rust-analyzer" },
		},
	},
}
