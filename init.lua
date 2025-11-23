-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- requirements
require("config.lazy")
require("config.keymaps")
require("config.opts")
require("lazy").setup("plugins")

