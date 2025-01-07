return {
  -- tetris
  { -- https://github.com/alec-gibson/nvim-tetris
    "alec-gibson/nvim-tetris",
    event = "VeryLazy",
  },
  -- sodoku
  {
    -- https://github.com/jim-fx/sudoku.nvim
    "jim-fx/sudoku.nvim",
    cmd = "Sudoku",
    config = function()
      require("sudoku").setup({
        -- configuration ...
      })
    end,
  },
  -- Vim -be good
  {
    -- https://github.com/ThePrimeagen/vim-be-good
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy",
  },

  {
    -- https://github.com/alanfortlink/blackjack.nvim
    "alanfortlink/blackjack.nvim",
    event = "VeryLazy",
    dependencies = {
      -- https://github.com/nvim-lua/plenary.nvim
      { "nvim-lua/plenary.nvim" },
    },
  },
}
