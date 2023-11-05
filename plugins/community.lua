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
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.html-css" },
  -- Motions
  { import = "astrocommunity.motion.flit-nvim" },
}
