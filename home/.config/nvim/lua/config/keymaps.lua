-- 设置<leader>键
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- 更好的j, k
vim.keymap.set({ "n", "v" }, "j", "gj")
vim.keymap.set({ "n", "v" }, "k", "gk")

-- 移动行首行尾
vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")

-- -- 移动到其他窗口
-- vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
-- vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
-- vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
-- vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- 用alt上下移动整行
vim.keymap.set("n", "<C-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<C-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<C-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<C-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- 删除当前buffer
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Delete Buffer" })

-- 打开Lazy.nvim面板
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- 取消搜索高亮
vim.keymap.set("n", "<esc>", "<cmd>noh<cr><esc>")
-- 切换换行显示
vim.keymap.set({ "n", "v" }, "<leader>uw", "<cmd>set wrap!<cr>", { desc = "Toggle Text Wrapping" })

-- 切换到Config
vim.keymap.set("n", "<leader>gc", "<cmd>cd " .. vim.fn.stdpath("config") .. "<cr>", { desc = "Config" })

-- 切换到Solitude
vim.keymap.set("n", "<leader>gs", "<cmd>cd ~/PurpleRainFish/Documents/Solitude/<cr>", { desc = "Solitude" })

-- insert模式下的快捷键
vim.keymap.set("i", "<C-e>", "<C-o>$")
vim.keymap.set("i", "<C-a>", "<C-o>^")
vim.keymap.set("i", "<C-b>", "<C-o>h")
vim.keymap.set("i", "<C-f>", "<C-o>l")

vim.keymap.set("n", "<C-1>", "<cmd>tabnext 1<cr>")
vim.keymap.set("n", "<C-2>", "<cmd>tabnext 2<cr>")
vim.keymap.set("n", "<C-3>", "<cmd>tabnext 3<cr>")
vim.keymap.set("n", "<C-4>", "<cmd>tabnext 4<cr>")
