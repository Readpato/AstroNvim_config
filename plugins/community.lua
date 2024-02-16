return {
  "AstroNvim/astrocommunity",
  -- Colorschemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      styles = {
        comments = { "italic" },
        functions = { "italic" },
        keywords = { "italic" },
        variables = { "italic" },
        -- strings = { "italic" },
      },
      color_overrides = {
        mocha = {
          base = "#1a1a1a",
          mantle = "#1a1a1a",
          crust = "#1a1a1a",
        },
      },
    },
  },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        comments = { italic = true },
        functions = { italic = true },
        keywords = { italic = true },
        variables = { italic = true },
        -- strings = { "italic" },
      },
    },
  },

  -- Languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.rust" },
  -- Motions
  { import = "astrocommunity.motion.flit-nvim" },
  -- Completion
  { import = "astrocommunity.completion.copilot-lua" },
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
          --dismiss = false,
        },
      },
    },
  },
  -- Markdown
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}
