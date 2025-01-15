require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    rust = { "rustfmt" },
    typescript = {"prettier" },
    javascript = {"prettier" },
    typescriptreact = {"prettier" },
    javascriptreact = {"prettier" },
  },
  format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 500
  }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
