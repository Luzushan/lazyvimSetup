-- config file
if vim.loader then
  vim.loader.enable()
end

_G.dd = function(...)
  require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

-- bufferline setup
vim.opt.termguicolors = true
require("bufferline").setup({})

-- treesitter setup
-- require("lazy").setup({
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     config = function()
--       local configs = require("nvim-treesitter.configs")
--
--       configs.setup({
--         ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
--         sync_install = false,
--         highlight = { enable = true },
--         indent = { enable = true },
--       })
--     end,
--   },
-- })
