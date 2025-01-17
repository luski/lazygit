return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },

  config = function()
    require("cyberdream").setup({
      -- Enable transparent background
      transparent = false,

      -- Enable italics comments
      italic_comments = true,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = false,

      -- Modern borderless telescope theme - also applies to fzf-lua
      borderless_telescope = true,

      -- Set terminal colors used in `:terminal`
      terminal_colors = true,

      -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
      cache = false,

      theme = {
        variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
        saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
        highlights = {
          -- Highlight groups to override, adding new groups is also possible
          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

          -- Example:
          Comment = { fg = "#696969", bg = "NONE", italic = true },

          -- Complete list can be found in `lua/cyberdream/theme.lua`
        },
      },

      -- Disable or enable colorscheme extensions
      extensions = {
        telescope = true,
        notify = true,
        mini = true,
      },
    })
  end,
}
