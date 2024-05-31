return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-d>"] = { "<C-d>zz", desc = "Jump half a screen down and center" },
          ["<C-u>"] = { "<C-u>zz", desc = "Jump half a screen up and center" },
        },
      },
    },
  },
}
