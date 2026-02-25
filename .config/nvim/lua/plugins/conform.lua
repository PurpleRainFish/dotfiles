return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format" },
			json = { "prettier" },
			jsonc = { "prettier" },
			typst = { "typstyle" },
			yaml = { "prettier" },
			tex = { "tex-fmt" },
			toml = { "taplo" },
			css = { "prettier" },
			sh = { "shfmt" },
			rust = { "rustfmt" },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
