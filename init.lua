vim.opt.relativenumber = true
vim.opt.scrolloff = 5
-- vim.opt.mouse = nil
vim.api.nvim_set_option("tabline", [[%{%v:lua.require("tabline").draw()%}]])

-- Auto open file explorer when enter nvim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("nvim-tree.api").tree.open()
      -- require("telescope.builtin").find_files()
    end
  end,
})
