return {
	"stevearc/conform.nvim",
	event = { "bufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				go = { "gofmt" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				lua = { "stylua" },
				rust = { "rustfmt" },
				python = { "black", "isort" },
				sh = { "shfmt" },
				yaml = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },
				markdown = { "prettier" },
				vue = { "prettier" },
				svelte = { "prettier" },
				graphqls = { "prettier" },
				graphql = { "prettier" },
				graphqlschema = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end)
	end,
}
