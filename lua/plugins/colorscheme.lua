return {
	-- onedark colorscheme
	"navarasu/onedark.nvim",
	priority = 1000,  -- load before other UI plugins
	config = function()
		require("onedark").setup {
			style = "darker",  -- options: dark, darker, cool, deep, warm, warmer, light
		}
		require("onedark").load()

		-- Define your colorscheme list (accessible globally)
    _G.colorschemes = {
      "onedark",
      "habamax",
      "slate",
      "desert",
      "evening",
      "industry",
      "koehler",
      "morning",
      "murphy",
      "pablo",
      "peachpuff",
      "ron",
      "shine",
      "torte",
      "zellner",
      "blue",
      "darkblue",
      "delek",
      "elflord",
    }
    
    _G.current_colorscheme_index = 1
    
    -- Function to cycle through colorschemes (accessible globally)
    _G.cycle_colorscheme = function(direction)
      if direction == "next" then
        _G.current_colorscheme_index = _G.current_colorscheme_index + 1
        if _G.current_colorscheme_index > #_G.colorschemes then
          _G.current_colorscheme_index = 1
        end
      else
        _G.current_colorscheme_index = _G.current_colorscheme_index - 1
        if _G.current_colorscheme_index < 1 then
          _G.current_colorscheme_index = #_G.colorschemes
        end
      end
      
      local scheme = _G.colorschemes[_G.current_colorscheme_index]
      vim.cmd.colorscheme(scheme)
      print("Colorscheme: " .. scheme)
    end
    
    -- Function to select colorscheme from menu
    _G.select_colorscheme = function()
      vim.ui.select(_G.colorschemes, {
        prompt = "Select colorscheme:",
      }, function(choice)
        if choice then
          vim.cmd.colorscheme(choice)
          -- Update current_index to match selection
          for i, scheme in ipairs(_G.colorschemes) do
            if scheme == choice then
              _G.current_colorscheme_index = i
              break
            end
          end
        end
      end)
    end
	end,
}
