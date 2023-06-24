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

  -- Comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile", -- What level of lazy load is specified?
    config = function() require("todo-comments").setup() end,
    -- opts = {},
    cmd = { "TodoQuickFix" }, -- Specify a command to load the plugin.
    keys = {                  -- Create mappings using "key option" to load the plugin.
      { "<leader>T", "<cmd>TodoTelescope<CR>", desc = "Open TODOs in Telescope" },
    },
  },
  { "mbbill/undotree" },
  -- Web Dev
  --[[ {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
    build = "npm install --prefix server",
  }, ]]
  { "sainnhe/gruvbox-material" },
}
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
