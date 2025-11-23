vim.keymap.set("i", "jk", "<esc>")

-- PLUGINS --
-- nvim tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })

-- telescope
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files" })
