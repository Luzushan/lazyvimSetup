-- Plugins use for better folding for code
-- TODO: finish this file setup https://www.youtube.com/watch?v=4BJ_tNuQu0w
--

local M = { "kevinhwang91/nvim-ufo" }
M.event = "VeryLazy"
M.dependencies = {
  "kevinhwang91/promise-async",
}

M.config = function()
  require("ufo").setup()
end

return M
