---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.recipes.ai" },
  { import = "astrocommunity.completion.blink-cmp" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.motion.flit-nvim" },
}
