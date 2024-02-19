return {
  -- configuration goes here
  arg = "leetcode.nvim",
  lang = "ruby",
  injector = {
    ["golang"] = {
      before = { "package main", "" },
    },
  },
}
