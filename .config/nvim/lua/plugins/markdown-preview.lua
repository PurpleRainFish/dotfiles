return {
	"iamcco/markdown-preview.nvim",
	keys = {
		{
			"<leader>pm",
			"<cmd>MarkdownPreview<cr>",
			desc = "Markdown Preview",
		},
	},
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
}
