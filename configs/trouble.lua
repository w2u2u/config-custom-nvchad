local trouble = require "trouble"

trouble.setup {
  auto_open = false,
  auto_close = true,
}

vim.keymap.set("n", "<leader>d", function()
  require("trouble").toggle()
end)

-- local actions = require("telescope.actions")
-- local trouble = require "trouble.providers.telescope"
--
-- local telescope = require "telescope"
--
-- telescope.setup {
--   defaults = {
--     mappings = {
--       i = { ["<c-t>"] = trouble.open_with_trouble },
--       n = { ["<c-t>"] = trouble.open_with_trouble },
--     },
--   },
-- }
