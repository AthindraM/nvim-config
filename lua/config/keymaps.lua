vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")

-- c++
vim.keymap.set("n", "<leader>cb", "<cmd>w<cr><cmd>!cmake -Bbuild && cmake --build build<cr>",
  { desc = "Build C++ project" })

-- PLUGINS --
-- Colorscheme keymaps
vim.keymap.set("n", "<leader>tn", function()
  _G.cycle_colorscheme("next")
end, { desc = "Next theme" })

vim.keymap.set("n", "<leader>tp", function()
  _G.cycle_colorscheme("prev")
end, { desc = "Previous theme" })

vim.keymap.set("n", "<leader>ts", function()
  _G.select_colorscheme()
end, { desc = "Select theme" })

-- nvim tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", 
  { desc = "Toggle file explorer" })

-- telescope
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>",
  { desc = "Fuzzy find files" })

