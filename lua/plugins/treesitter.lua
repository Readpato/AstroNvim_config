-- Customize Treesitter
---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "css",
      "html",
      "javascript",
      "json",
      "jsonc",
      "lua",
      "markdown",
      "typescript",
      "vim",
      "vue",
      "scss",
      "rust",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
