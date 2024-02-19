local outline = require "outline"

outline.setup {
  -- Your setup opts here (leave empty to use defaults)
  outline_window = {
    auto_close = true,
    --   auto_jump = true,
    -- center_on_jump = true,
  },
  outline_items = {
    show_symbol_lineno = true,
  },
  preview_window = {
    show_numbers = false,
    auto_preview = true,
    open_hover_on_preview = true,
  },
}

vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
