vim.opt.number = true -- 显示行号
vim.opt.relativenumber = true -- 显示相对行号
vim.opt.cursorline = true -- 使光标行高亮

vim.opt.fileencodings = {
	"ucs-bom", -- 如果文件头有 BOM 标记，优先识别
	"utf-8", -- 绝大多数现代文件
	"gb18030", -- 最全的中文编码 (兼容 gbk, gb2312, cp936)
	"gbk", -- 常见的旧中文编码 (放在 gb18030 前面速度稍快，可选)
	"big5", -- 繁体中文
	"shift-jis", -- 日文 (Windows/DOS) - 你刚才需要的
	"euc-jp", -- 日文 (旧 Unix)
	"latin1", -- ⚠️ 必须放最后！作为兜底，防止 Neovim 报错
}

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false -- 折叠行

vim.opt.smartcase = true -- 搜索时忽略大小写

vim.opt.scrolloff = 8 -- 光标距离上下边界8行
vim.opt.sidescrolloff = 8 -- 光标距离低端边界8行

vim.opt.clipboard = "unnamedplus" -- 关联剪贴板

vim.opt.updatetime = 500 -- 修改updatetime

-- 默认新窗口右和下
vim.opt.splitright = true
vim.opt.splitbelow = true
