return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "catppuccin",
      -- colorscheme = "catppuccin-latte",
      colorscheme = "catppuccin-frappe",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-mocha",
    },
  },
}
