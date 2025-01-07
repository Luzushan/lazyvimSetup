local M = { "Djancyp/better-comments.nvim" }

M.event = lazy

M.config = function()
  require("better-comment").Setup({
    tags = {
      -- TODO:
      {
        name = "TODO",
        fg = "white",
        bg = "",
        bold = true,
        virtual_text = "",
      },

      {
        name = "FIX",
        fg = "#cd2028",
        bg = "",
        bold = true,
        virtual_text = "Virtual Text from FIX",
      },

      {
        name = "WARNING",
        fg = "#FFA500",
        bg = "",
        bold = false,
        virtual_text = "Virtual Text from WARNING",
      },
      {
        name = "!",
        fg = "#f44747",
        bg = "",
        bold = true,
        virtual_text = "",
      },
      {
        name = "TAG",
        fg = "#00ff73",
        bg = "",
        bold = false,
        virtual_text = "✌",
      },
    },
  })
end

return M
