return {
  { "rebelot/kanagawa.nvim", name = kanagawa },
  { "craftzdog/solarized-osaka.nvim", name = "solarized-osaka" },
  { "catppuccin/nvim", name = "catppuccin", lazy = false },
  { "rose-pine/neovim", name = "rose-pine" },
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
    }
  end,
}
