return {
  { "rebelot/kanagawa.nvim", name = "kanagawa" },
  { "craftzdog/solarized-osaka.nvim", name = "solarized-osaka" },
  { "catppuccin/nvim", name = "catppuccin", lazy = false },
  { "rose-pine/neovim", name = "rose-pine" },
  { "gbprod/nord.nvim", name = "nord" },
  { "olivercederborg/poimandres.nvim", name = "poimandres" },
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
    }
  end,

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
      -- fav:
      --colorscheme = "nord", -- winter vibes
      -- colorscheme = "default", -- dark-theme
      -- colorscheme = "catppuccin-mocha" -- cute theme
      -- colorscheme = "poimandres"
    },
  },
}
