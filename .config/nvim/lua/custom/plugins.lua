local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        "go",

        "rust",
        "toml",
        "groovy",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "delve",
        "rust-analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap_go")
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "ThePrimeagen/vim-be-good",
    lazy = false,
  },
  {
    "vimwiki/vimwiki",
    lazy = false,
    init = function ()
    end
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "anuvyklack/pretty-fold.nvim",
    lazy = false,
    config = function ()
      require("pretty-fold").setup()
    end
  },
  {
    "tpope/vim-commentary",
    lazy = false,
  },
  {
    "RaafatTurki/hex.nvim",
    lazy = false,
    config = function ()
      require 'hex'.setup()
    end
  },
  {
    "David-Kunz/gen.nvim",
    lazy = false,
    config = function ()
      require("gen").model = "magicoder"
      require("gen").display_mode = "split"
    end
  },
  {
    "nat-418/boole.nvim",
    lazy = false,
    config = function ()
      require("boole").setup({
        mappings = {
          increment = '<C-a>',
          decrement = '<C-x>'
        },
      })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = false,
    config = function ()
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "junegunn/vim-peekaboo",
    lazy = false,
  },
}
return plugins
