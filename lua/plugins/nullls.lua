return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      debug = true,
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.clang_tidy,
        null_ls.builtins.formatting.clang_format.with({
          extra_args = { "--style=file" },
        }),
        null_ls.builtins.formatting.shfmt.with({
          extra_args = function(params)
            return { "-i", vim.api.nvim_buf_get_option(params.bufnr, "shiftwidth") }
          end,
        }),
      },
    })
    vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, {})
  end,
}
