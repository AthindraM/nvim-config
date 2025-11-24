vim.keymap.set("i", "jk", "<esc>")

-- c++
vim.keymap.set("n", "<leader>cb", ":!cmake -Bbuild && cmake --build build<CR>",
  { desc = "Build project" })

vim.keymap.set("n", "<leader>cr", ":!./build/OpenGLProject<CR>",
  { desc = "Run project" })

-- PLUGINS --
-- nvim tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>",
	{ desc = "Toggle file explorer" })

-- telescope
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>",
	{ desc = "Fuzzy find files" })
