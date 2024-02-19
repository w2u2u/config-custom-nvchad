local options = {
  highlight = {
    enable = true,
  },
  ensure_installed = {
    "ruby",
    "go",
    "rust",
    "html",
    "css",
    "javascript",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      scope_incremental = "false",
      node_decremental = "<BS>",
    },
  },
}

return options
