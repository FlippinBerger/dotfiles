return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				auto_integrations = true,
				float = {
					transparent = false, -- enable transparent floating windows
					solid = false, -- use solid styling for floating windows, see |winborder|
				},
			})

			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			sidebars = "normal",
		},
		config = function()
			require("tokyonight").setup({
				-- ... your other settings
				on_colors = function(colors)
					colors.fg_gutter = "#3d3e40"
				end,
				on_highlights = function(hl, colors)
					-- Change the standard line number color to yellow
					hl.LineNr = { fg = "#20c203" }
				end,
			})
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
}
