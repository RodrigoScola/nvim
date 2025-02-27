return {

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"nvim-tree/nvim-web-devicons",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind.nvim",
			"j-hui/fidget.nvim",
		},

		config = function()
			local cmp = require("cmp")
			local cmp_lsp = require("cmp_nvim_lsp")
			local capabilities = vim.tbl_deep_extend(
				"force",
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_lsp.default_capabilities()
			)

			require("fidget").setup({})
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"tsserver",
				},

				handlers = {
					function(server_name) -- default handler (optional)
						require("lspconfig")[server_name].setup({
							capabilities = capabilities,
						})
					end,

					-- ["tsserver"] = function()
					-- 	local lspconfig = require("lspconfig")
					--
					-- 	lspconfig.tsserver.setup({
					-- 		settings = {
					-- 			typescript = {
					-- 				inlayHints = {
					-- 					includeInlayParameterNameHints = "all",
					-- 					includeInlayParameterNameHintsWhenArgumentMatchesName = true,
					-- 					includeInlayFunctionParameterTypeHints = true,
					-- 					includeInlayVariableTypeHints = false,
					-- 					includeInlayVariableTypeHintsWhenTypeMatchesName = true,
					-- 					includeInlayPropertyDeclarationTypeHints = true,
					-- 					includeInlayFunctionLikeReturnTypeHints = true,
					-- 					includeInlayEnumMemberValueHints = true,
					-- 				},
					-- 			},
					-- 			javascript = {
					-- 				inlayHints = {
					-- 					includeInlayParameterNameHints = "all",
					-- 					includeInlayParameterNameHintsWhenArgumentMatchesName = true,
					-- 					includeInlayFunctionParameterTypeHints = true,
					-- 					includeInlayVariableTypeHints = false,
					-- 					includeInlayVariableTypeHintsWhenTypeMatchesName = true,
					-- 					includeInlayPropertyDeclarationTypeHints = true,
					-- 					includeInlayFunctionLikeReturnTypeHints = true,
					-- 					includeInlayEnumMemberValueHints = true,
					-- 				},
					-- 			},
					-- 		},
					-- 	})
					-- end,

					["lua_ls"] = function()
						local lspconfig = require("lspconfig")
						lspconfig.lua_ls.setup({
							capabilities = capabilities,
							settings = {
								Lua = {
									diagnostics = {
										globals = { "vim", "it", "describe", "before_each", "after_each" },
									},
									hint = {
										enable = true,
									},
								},
							},
						})
					end,
				},
			})

			local cmp_select = { behavior = cmp.SelectBehavior.Select }

			local lspkind = require("lspkind")
			cmp.setup({

				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol", -- show only symbol annotations
						maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
						-- can also be a function to dynamically calculate max width such as
						-- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
						ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
						show_labelDetails = true, -- show labelDetails in menu. Disabled by default

						-- The function below will be called before any actual modifications from lspkind
						-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
						before = function(_, vim_item)
							return vim_item
						end,
					}),
				},

				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},

				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
					-- ["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<S-CR>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),

				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})

			vim.diagnostic.config({
				-- update_in_insert = true,

				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			})
		end,
	},
	-- {
	--      "MysticalDevil/inlay-hints.nvim",
	--      event = "LspAttach",
	--      dependencies = { "neovim/nvim-lspconfig" },
	--      config = function()
	--           require("inlay-hints").setup()
	--      end,
	-- },
}
