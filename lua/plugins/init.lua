return {
  ["NvChad/ui"] = {
    config = function()
      vim.opt.statusline = ""
    end,
  },
  -- {
  --   "stevearc/conform.nvim",
  --   -- event = 'BufWritePre', -- uncomment for format on save
  --   config = function()
  --     require "configs.conform"
  --   end,
  -- },
  -- {
  --   "goolord/alpha-nvim",
  --   cmd = "Alpha",
  --   event = "VimEnter",
  --   dependencies = { "ahmedkhalf/project.nvim" },
  --   config = function()
  --     require "configs.alpha"
  --   end,
  -- },
  require("configs.project"),
  require("configs.git-blame"),
  require("configs.lightbulb"),
  require("configs.listchars"),
  require("configs.pretty-fold"),
  require("configs.tailwind-sorter"),
  -- require("configs.telescope"),
  require("configs.tokyo"),
  require("configs.noice"),
  require("configs.better-ts"),
  require("configs.lazygit"),
  require("configs.colorizer"),
  require("configs.hover"),
  require("configs.navic"),

  -- require("configs.blankline"),
  { "ellisonleao/dotenv.nvim" },
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local wk = require("which-key")
      wk.register({
        x = {
          name = "Trouble",
          x = { function() require("trouble").toggle() end, "Trouble Toogle" },
          w = { function() require("trouble").toggle("workspace_diagnostics") end, "Trouble workspace diagonostics" },
          d = { function() require("trouble").toggle("document_diagnostics") end, "Trouble document diagonostics" },
          q = { function() require("trouble").toggle("quickfix") end, "Trouble Quickfixs" },
          l = { function() require("trouble").toggle("loclist") end, "Trouble loclist" }
        }
      }, { prefix = "<leader>" })

      vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, {
        desc =
        "Go to References"
      })
    end
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {

      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "SmiteshP/nvim-navic",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_installation = true,
        ensure_installed = {
          "lua_ls",
          "astro",
          "cssls",
          -- "cssmodules_ls",
          "dockerls",
          "docker_compose_language_service",
          "html",
          "jsonls",
          "marksman",
          "mdx_analyzer",
          "prismals",
          "svelte",
          "tailwindcss",
          "tsserver",
          "vuels",
          "biome",
          "eslint"
        }
      })

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
        "astro-language-server",
        "css-lsp",
        -- "cssmodules-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "eslint-lsp",
        "eslint_d",
        "html-lsp",
        "json-lsp",
        "marksman",
        "prettierd",
        "prisma-language-server",
        "svelte-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
        "biome",
      },
    }
  },
  {
    "williamboman/mason-lspconfig.nvim"
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require("configs.none-ls")
    end,
    keys = {
      { "<leader>lN", "<cmd>NullLsInfo<cr>", desc = "Lsp none-lsp info" }
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },
  require("configs.opener"),
  -- require("configs.lualine"),
  require("configs.witch-key"),
}
