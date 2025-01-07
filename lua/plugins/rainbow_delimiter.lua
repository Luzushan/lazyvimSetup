return {
  "HiPhish/rainbow-delimiters.nvim",
  lazy = true,
  event = "BufRead",
  config = function()
    local rainbow_delimiters = require("rainbow-delimiters")

    ---@type rainbow_delimiters.config
    vim.g.rainbow_delimiters = {
      strategy = {
        [""] = rainbow_delimiters.strategy["global"],
        vim = rainbow_delimiters.strategy["local"],
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      priority = {
        [""] = 110,
        lua = 210,
      },
      highlight = {
        "RainbowDelimiterBlue",
        "RainbowDelimiterCyan",
        "RainbowDelimiterYellow",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterRed",
      },
    }
  end,
}

-- This module contains a number of default definitions
