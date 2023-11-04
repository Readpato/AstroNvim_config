return {
  "AstroNvim/astrocommunity",
  -- Colorschemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },
  -- Languages
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  -- Motions
  { import = "astrocommunity.motion.flit-nvim" },
}
