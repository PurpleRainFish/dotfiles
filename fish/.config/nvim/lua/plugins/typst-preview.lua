return {
	"chomosuke/typst-preview.nvim",
    keys={
        {
            '<leader>pt',
            "<cmd>TypstPreview<cr>",
            desc="Typst Preview"
        }
    },
	ft = "typst",
	version = "1.*",
	opts = {}, -- lazy.nvim will implicitly calls `setup {}`
}
