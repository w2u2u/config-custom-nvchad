local textobjects = require "nvim-treesitter.configs"

textobjects.setup {
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["po"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
        ["pi"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },
      },
    },
  },
}
