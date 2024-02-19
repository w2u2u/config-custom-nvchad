local M = {}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "Exit insert mode" },
  },
  n = {
    ["<leader>q"] = { "<cmd>qa<CR>", "Exit all" },
    ["<leader>s"] = { "<cmd>w<CR>", "Save" },
    -- ["<leader>so"] = { ":SymbolsOutline<CR>", "Toggle symbols outline" },

    -- Git
    ["<leader>git"] = { ":LazyGit<CR>", "Open LazyGit" },

    -- Definitions and Rederences
    ["gr"] = { "<cmd>Telescope lsp_references<CR>", "Go to references" },
    ["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "Go to definitions" },

    -- Clean unused mappings
    ["<C-h>"] = { "" },
    ["<C-l>"] = { "" },
    ["<C-j>"] = { "" },
    ["<C-k>"] = { "" },

    ["<C-m>"] = { "" },
  },
}

return M
