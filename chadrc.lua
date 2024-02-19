---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "ayu_dark",
  transparency = true,
  hl_override = {
    CursorLine = {
      bg = "line",
    },
  },
  statusline = {
    theme = "minimal",
    -- separator_style = "round",
  },
  cmp = {
    style = "default",
    selected_item_bg = "colored",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
