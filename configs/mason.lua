local mason = require "mason"
local mason_lsp = require "mason-lspconfig"

mason.setup {
  ui = {
    keymaps = {
      apply_language_filter = "<C-f>",
    },
  },
}

mason_lsp.setup {
  automatic_installation = true,
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "rubocop",
    "solargraph",
    "gopls",
    "pyright",
    "mypy",
    "ruff",
    "html",
    "cssls",
    "tsserver",
  },
}
