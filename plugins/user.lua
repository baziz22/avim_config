return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- { "MunifTanjim/nui.nvim" },

  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --   },
  -- },

  -- Color Scheme
  { "sainnhe/gruvbox-material" },

  -- Comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile", -- What level of lazy load is specified?
    -- config = function()
    --  require("todo-comments").setup {
    -- Your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    --  }
    -- end,
    -- opts field: alternative way to "config = ",
    -- opts: automatically calls the plugin's setup method with the arguments passed.
    opts = {},
    cmd = { "TodoQuickFix" }, -- Specify a command to load the plugin.
    keys = {                  -- Create mappings using "key option" to load the plugin.
      { "<leader>T", "<cmd>TodoTelescope<CR>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "mbbill/undotree",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
    cmd = { "UndotreeToggle" },
  },
  --[[{
    "jiaoshijie/undotree",
    config = function() require("undotree").setup() end,
    requires = {
      "nvim-lua/plenary.nvim",
    },
    cmd = { "UndotreeToggle" },
  },]]

  {
    "debugloop/telescope-undo.nvim",
    dependencies = { -- note how they're inverted to above example
      {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
      },
    },
    keys = {
      { -- lazy style key map
        "<leader>v",
        "<cmd>Telescope undo<cr>",
        desc = "undo history",
      },
    },
    opts = {
      -- don't use `defaults = { }` here, do this in the main telescope spec
      extensions = {
        undo = {
          -- telescope-undo.nvim config, see below
        },
        -- no other extensions here, they can have their own spec too
      },
    },
    config = function(_, opts)
      -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
      -- configs for us. We won't use data, as everything is in it's own namespace (telescope
      -- defaults, as well as each extension).
      require("telescope").setup(opts)
      require("telescope").load_extension "undo"
    end,
  },
  -- Web Dev
  {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
    build = "npm install --prefix server",
  },
  { "digitaltoad/vim-pug" },
}

-- :TodoQuickFix command brings up quickfix list of all todo in the project. C-q to close it.
-- TODO WAHT
-- TODO: WHATIN
-- FIX: this should be fixed
-- WARNING:
-- OPTIM: OPTIMIZE: INFO:
-- TEST:
-- HACK:
-- NOTE:
-- XXX:
-- FAILED:
