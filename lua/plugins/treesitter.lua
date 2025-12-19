return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    ensure_installed = {
      "lua", "vim", "vimdoc",
      "cpp", "python", "json",
      "javascript", "typescript", "tsx",
      "html", "css", "markdown", "markdown_inline",
      "bash", "dockerfile", "gitignore", "c",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}
