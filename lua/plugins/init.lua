return {
	-- Onedark colorscheme
	{
		"navarasu/onedark.nvim",
		priority = 1000,  -- load before other UI plugins
		config = function()
			require("onedark").setup {
				style = "darker",  -- options: dark, darker, cool, deep, warm, warmer, light
			}
			require("onedark").load()
		end,
  },

	-- nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})
		end,
	},
}

