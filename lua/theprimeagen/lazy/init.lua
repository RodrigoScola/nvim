return {
	{
		"rebelot/terminal.nvim",
		config = function()
			require("terminal").setup()
		end,
	},
	{
		"lvimuser/lsp-inlayhints.nvim",
		config = function()
			require("lsp-inlayhints").setup()
		end,
	},

	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	{ "ThePrimeagen/vim-be-good" },

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
	{ "arturgoms/moonbow.nvim" },
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
	"nvim-neotest/nvim-nio",
	"eandrju/cellular-automaton.nvim",
	"gpanders/editorconfig.nvim",

	{
		"filipdutescu/renamer.nvim",
		branch = "master",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("renamer").setup()
		end,
	},
}
