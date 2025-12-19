-- leader key 
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap and setup lazy.nvim
require("config.lazy")

-- Load configurations
require("config.keymaps")
require("config.opts")
