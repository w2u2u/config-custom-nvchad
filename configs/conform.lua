local conform = require "conform"

vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
  conform.format {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  }
end, { desc = "Format file or range (in visual mode)" })

conform.setup {
  formatters_by_ft = {
    ruby = { "rubyfmt" },
    go = { "gofmt", "goimports", "golines" },
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
}
