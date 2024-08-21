-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
	},
	config = function()
		local comment = require("Comment")

		comment.setup({
			opleader = {
				---Line-comment toggle keymap
				line = "<C-_>",
				---Block-comment toggle keymap
				--[[ block = "<C-_>", ]]
			},
			toggler = {
				---Line-comment toggle keymap
				line = "<C-_>",
				---Block-comment toggle keymap
				--[[ block = "<C-_>", ]]
			},
		})
	end,
}
