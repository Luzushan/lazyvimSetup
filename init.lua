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
