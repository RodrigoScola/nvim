function ColorMyPencils(color)
	color = color or "tokyonight"
	--color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	-- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- { "HoNamDuong/hybrid.nvim" },
	-- {
	-- 	-- good one
	-- 	"sho-87/kanagawa-paper.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- },
	-- { "kdheepak/monochrome.nvim" },
	-- { "yashguptaz/calvera-dark.nvim" },
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	version = false,
	-- 	lazy = false,
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	-- Optional; default configuration will be used if setup isn't called.
	-- 	config = function()
	-- 		require("everforest").setup({
	-- 			---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
	-- 			---Default is "medium".
	-- 			background = "hard",
	-- 			---How much of the background should be transparent. 2 will have more UI
	-- 			---components be transparent (e.g. status line background)
	-- 			transparent_background_level = 0,
	-- 			---Whether italics should be used for keywords and more.
	-- 			italics = true,
	-- 			---Disable italic fonts for comments. Comments are in italics by default, set
	-- 			---this to `true` to make them _not_ italic!
	-- 			disable_italic_comments = true,
	-- 			---By default, the colour of the sign column background is the same as the as normal text
	-- 			---background, but you can use a grey background by setting this to `"grey"`.
	-- 			sign_column_background = "none",
	-- 			---The contrast of line numbers, indent lines, etc. Options are `"high"` or
	-- 			---`"low"` (default).
	-- 			ui_contrast = "high",
	-- 			---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
	-- 			---
	-- 			---When this option is used in conjunction with show_eob set to `false`, the
	-- 			---end of the buffer will only be hidden inside the active window. Inside
	-- 			---inactive windows, the end of buffer filler characters will be visible in
	-- 			---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
	-- 			dim_inactive_windows = false,
	-- 			---Some plugins support highlighting error/warning/info/hint texts, by
	-- 			---default these texts are only underlined, but you can use this option to
	-- 			---also highlight the background of them.
	-- 			diagnostic_text_highlight = false,
	-- 			---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
	-- 			diagnostic_virtual_text = "coloured",
	-- 			---Some plugins support highlighting error/warning/info/hint lines, but this
	-- 			---feature is disabled by default in this colour scheme.
	-- 			diagnostic_line_highlight = false,
	-- 			---By default, this color scheme won't colour the foreground of |spell|, instead
	-- 			---colored under curls will be used. If you also want to colour the foreground,
	-- 			---set this option to `true`.
	-- 			spell_foreground = false,
	-- 			---Whether to show the EndOfBuffer highlight.
	-- 			show_eob = true,
	-- 			---Style used to make floating windows stand out from other windows. `"bright"`
	-- 			---makes the background of these windows lighter than |hl-Normal|, whereas
	-- 			---`"dim"` makes it darker.
	-- 			---
	-- 			---Floating windows include for instance diagnostic pop-ups, scrollable
	-- 			---documentation windows from completion engines, overlay windows from
	-- 			---installers, etc.
	-- 			---
	-- 			---NB: This is only significant for dark backgrounds as the light palettes
	-- 			---have the same colour for both values in the switch.
	-- 			float_style = "bright",
	-- 			---Inlay hints are special markers that are displayed inline with the code to
	-- 			---provide you with additional information. You can use this option to customize
	-- 			---the background color of inlay hints.
	-- 			---
	-- 			---Options are `"none"` or `"dimmed"`.
	-- 			inlay_hints_background = "none",
	-- 			---You can override specific highlights to use other groups or a hex colour.
	-- 			---This function will be called with the highlights and colour palette tables.
	-- 			on_highlights = function(highlight_groups, palette) end,
	-- 			---You can override colours in the palette to use different hex colours.
	-- 			---This function will be called once the base and background colours have
	-- 			---been mixed on the palette.
	-- 			colours_override = function(palette) end,
	-- 		})
	-- 	end,
	-- },
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				style = "warmer",
			})
		end,
	},
	-- { "AlexvZyl/nordic.nvim" },
	-- { "ray-x/starry.nvim" },
	-- {
	-- 	--https://github.com/comfysage/evergarden
	-- 	"comfysage/evergarden",
	-- 	priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
	-- 	opts = {
	-- 		transparent_background = false,
	-- 		contrast_dark = "hard", -- 'hard'|'medium'|'soft'
	-- 		overrides = {}, -- add custom overrides
	-- 	},
	-- },
	-- { "marko-cerovac/material.nvim" },
	-- {
	-- 	"HoNamDuong/hybrid.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("hybrid").setup({
	-- 			terminal_colors = true,
	-- 			undercurl = true,
	-- 			underline = true,
	-- 			bold = true,
	-- 			italic = {
	-- 				strings = false,
	-- 				emphasis = true,
	-- 				comments = true,
	-- 				folds = true,
	-- 			},
	-- 			strikethrough = true,
	-- 			inverse = true,
	-- 			transparent = false,
	-- 			-- overrides = function(highlights, colors) end,
	-- 		})
	-- 	end,
	-- },
	-- { "rebelot/kanagawa.nvim" },
	-- {
	-- 	"slugbyte/lackluster.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	init = function()
	-- 		-- vim.cmd.colorscheme("lackluster")
	-- 		vim.cmd.colorscheme("lackluster-hack") -- my favorite
	-- 		--vim.cmd.colorscheme("lackluster-mint")
	-- 	end,
	-- },
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = false, -- Enable this to disable setting the background color
				terminal_colors = false, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = { -- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = false },
					keywords = { italic = true, bold = true },
					-- Background styles. Can be "dark", "transparent" or "normal"
					-- sidebars = "dark", -- style for sidebars, see below
					-- floats = "dark", -- style for floating windows
				},
			})
		end,
	},

	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			--disable_background = true,
	-- 		})
	--
	-- 		ColorMyPencils("rose-pine")
	-- 	end,
	-- },
}
