local plugins = {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require "plugins.configs.mason"
      require "custom.configs.mason"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = function()
      return require "custom.configs.treesitter"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = true,
    config = function()
      return require "custom.configs.treesitter-textobjects"
    end,
  },
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      return require "custom.configs.conform"
    end,
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = true,
  },
  -- {
  --   "rust-lang/rust",
  --   ft = "rust",
  --   init = function()
  --     vim.g.rustfmt_autosave = 1
  --   end,
  -- },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "simrat39/inlay-hints.nvim",
    opts = function()
      return require "custom.configs.inlay-hints"
    end,
    config = function(_, opts)
      require("inlay-hints").setup(opts)
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      return require "custom.configs.trouble"
    end,
  },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      return require "custom.configs.outline"
    end,
  },
  {
    "tpope/vim-rails",
    ft = { "ruby" },
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    -- optional for floating window border decoration
    requires = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "karb94/neoscroll.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("neoscroll").setup {}
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("indent_blankline").setup {
        use_treesitter = true,
        -- show_current_context_start = true,
        show_current_context = true,
        char = "",
      }
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      return require "custom.configs.codeium"
    end,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
    opts = function()
      return require "custom.configs.leetcode"
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      return require "custom.configs.notify"
    end,
  },
  {
    "stevearc/dressing.nvim",
    lazy = false,
    config = function()
      return require "custom.configs.dressing"
    end,
  },
}

return plugins
