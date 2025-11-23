return {
	-- plenary
		"nvim-lua/plenary.nvim",

	-- onedark colorscheme
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

	-- autopairs
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
	},

	-- telescope
	{
    'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
     dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- which-key
	-- lualine
	-- indent lines
	-- greeter
}


