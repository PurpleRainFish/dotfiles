return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	-- NOTE: The log_level is in `opts.opts`
	opts = {
		log_level = "DEBUG", -- or "TRACE"
		opts = { language = "Chinese" },
		adapters = {
			http = {
				-- qianwen = function()
				-- 	return require("codecompanion.adapters").extend("openai_compatible", {
				-- 		env = {
				-- 			url = "https://dashscope.aliyuncs.com/compatible-mode/v1",
				-- 			api_key = function()
				-- 				return os.getenv("QIANWEN_API_KEY")
				-- 			end,
				-- 		},
				-- 		schema = {
				-- 			model = {
				-- 				default = "qwen-coder-plus-latest",
				-- 			},
				-- 		},
				-- 	})
				-- end,
				silicon_flow = function()
					return require("codecompanion.adapters").extend("openai_compatible", {

						url = "https://api.siliconflow.cn/v1/chat/completions",
						env = {
							api_key = "SILICON_FLOW_API_KEY",
						},
						schema = {
							model = {
								default = "Qwen/Qwen2.5-Coder-7B-Instruct",
							},
						},
					})
				end,
			},
		},

		interactions = {
			chat = {
				adapter = "silicon_flow",
			},
			inline = {
				adapter = "silicon_flow",
			},
		},
	},
}
