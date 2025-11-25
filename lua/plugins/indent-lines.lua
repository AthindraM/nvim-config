return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = { char = "¦" },
  },
  config = function()
    local colors = {
      red = '#CA1243',
      grey = '#A0A1A7',
      black = '#282c34',
      dark_grey = '#383a42',
      white = '#f3f3f3',
      light_grey = '#5C6370',
      orange = '#ff8800',
      green = '#98c379',
      blue = '#61afef',
      purple = '#c678dd'
    }

    -- Set indent line highlight to grey instead of purple
    vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.dark_grey })
    vim.api.nvim_set_hl(0, "IblScope", { fg = colors.light_grey })
    
    require("ibl").setup({
      indent = { char = "¦" },
      scope = { 
        show_start = false,
        show_end = false,
      }
    })
  end,
}
