-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- nvim tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
