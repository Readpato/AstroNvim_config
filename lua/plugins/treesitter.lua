---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "vue",
      "typescript",
      "javascript",
      "json",
      "html",
      "css",
      "markdown",
    })
  end,
}
