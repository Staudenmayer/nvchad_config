return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
  	opts = {
    	ensure_installed = {
    		"lua-language-server",
        "stylua",
    		"html-lsp",
        "css-lsp",
        "json-lsp",
        "eslint-lsp",
        "eslint_d",
        "prettier",
        "astro-language-server",
        "emmet-language-server",
        "typescript-language-server",
        "vue-language-server",
        "yaml-language-server",
        "docker-compose-language-service",
        "tailwindcss-language-server",
        "css-variables-language-server",
    	},
    },
  },
  --
  -- {
  {
    "nvim-treesitter/nvim-treesitter",
   	opts = {
   	  eensure_installed = {
   		  "vim", "lua", "vimdoc",
        "html", "css"
   		},
      autotag = {
        enable = true
      }
   	},
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = false -- Auto close on trailing </
    },
  }
}
