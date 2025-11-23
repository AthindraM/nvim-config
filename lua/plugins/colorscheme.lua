-- onedark colorscheme
return {
	"navarasu/onedark.nvim",
	priority = 1000,  -- load before other UI plugins
	config = function()
		require("onedark").setup {
			style = "darker",  -- options: dark, darker, cool, deep, warm, warmer, light
		}
		require("onedark").load()
	end,
}
