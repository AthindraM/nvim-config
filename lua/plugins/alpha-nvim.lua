-- greeter
return {
	"goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
			"											 ",
			"⠐⢶⣶⣶⣶⣶⣶⣶⣶⠖⡀⢀⠲⣶⣶⣶⣶⣶⣶⣶⡶⠂",
			"⠀⠀⠉⢭⣭⣭⣭⠍⣡⣾⡇⢸⣷⣌⠩⣭⣭⣭⡭⠉⠀⠀",
			"⠀⠀⠀⠀⠉⠉⣡⣾⡿⢫⡆⢰⣝⢿⣷⣌⠉⠉⠀⠀⠀⠀",
			"⠀⠀⠀⠀⣠⣾⡿⢋⣴⡿⠃⠈⠻⣷⡙⢿⣷⣄⠀⠀⠀⠀",
			"⠀⠀⠀⠈⠻⣿⣦⡙⢿⣦⡀⢀⣴⡿⢋⣴⣿⠟⠁⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠈⠻⣿⣦⡙⠇⠸⢋⣴⣿⠟⠁⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⡆⢰⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"											 ",
			" <-*> <RaspuVIM> <*-> ",
			"											 ",
		}

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("SPC e", "  ⤅  Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC f", "󰱼  ⤅  Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("q", "  ⤅  Quit RaspuVIM", "<cmd>qa<CR>"),
    }

		-- Define custom highlight groups for grey/red theme
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#CA1243" }) -- Red for header/logo
    vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#A0A1A7" }) -- Grey for menu text
    vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#383a42" }) -- Dark grey for shortcuts 
    
    -- Apply highlight groups
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"

		-- Apply shortcut highlight to each button
		for _, button in ipairs(dashboard.section.buttons.val) do
  		button.opts.hl_shortcut = "AlphaShortcut"
		end
    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
		end,
}
