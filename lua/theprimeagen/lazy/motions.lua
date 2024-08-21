return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	dependencies = { "nvim-treesitter" },
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["a'"] = "@attribute.outer",
						["i'"] = "@attribute.inner",
						["a;"] = "@assignment.rhs",
						["i;"] = "@assignment.lhs",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ii"] = "@conditional.inner",
						["ai"] = "@conditional.outer",
						["al"] = "@loop.outer",
						["il"] = "@loop.inner",
						["ab"] = "@block.outer",
						["ib"] = "@block.inner",
						["as"] = "@statement.outer",
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["is"] = "@statement.inner",
						["ad"] = "@comment.outer",
						["id"] = "@comment.inner",
						["am"] = "@call.outer",
						["im"] = "@call.inner",
					},
				},
				-- swap = {
				-- 	enable = true,
				-- 	swap_next = {
				-- 		["<leader>a"] = "@parameter.inner",
				-- 	},
				-- 	swap_previous = {
				-- 		["<leader>A"] = "@parameter.inner",
				-- 	},
				-- },
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["]m"] = "@function.outer",
						["]]"] = "@class.outer",
					},
					goto_next_end = {
						["]M"] = "@function.outer",
						["]["] = "@class.outer",
					},
					goto_previous_start = {
						["[m"] = "@function.outer",
						["[["] = "@class.outer",
					},
					goto_previous_end = {
						["[M"] = "@function.outer",
						["[]"] = "@class.outer",
					},
				},
			},
		})
	end,
}
