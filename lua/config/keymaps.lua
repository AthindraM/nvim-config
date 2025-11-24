vim.keymap.set("i", "jk", "<esc>")

-- c++
vim.keymap.set("n", "<leader>cb", "<cmd>w<cr><cmd>!cmake -Bbuild && cmake --build build<cr>",
  { desc = "Build project" } )

vim.keymap.set("n", "<leader>cr", ":!./build/OpenGLProject<CR>",
  { desc = "Run C++ project" } )

-- python
vim.keymap.set("n","<leader>pr", "<cmd>w<cr><cmd>!python3 main.py"),
	{ desc = "Run Python project" }

-- PLUGINS --
-- nvim tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>",
	{ desc = "Toggle file explorer" })

-- telescope
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>",
	{ desc = "Fuzzy find files" })
