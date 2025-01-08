-- The Mason plugin manages external editor tooling such as language servers, linters, formatters, and debuggers.
-- customize mason plugins
return {
  -- lsp: Language Server Protocol is program that provides language-specific features such as code completion and diagnostics.
  -- lsp: uses a uniform protocol to allow editors such as VSCode and Neovim to integrate with them.
  -- lsp: uses "ensure_installed" to install a language server, or uses "LspInstall" command.
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
      })
    end,
  },
  -- null-ls: similar to lspconfig, but designed for tools that don't have a language server, such as some formatters and linters.
  -- null-ls: uses "ensure_installed" to install a language server, or uses "NullLsInstall" command.
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "prettier",
        "stylua",
      })
    end,
  },
  -- DAP: Debug Adapter Protocol. It enables language debuggers.
  -- DAP: uses "ensure_installed" to install a language server, or uses "DapInstall" command to install an adapter.
  -- :DapInstall python -- to install python adapter
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
      })
    end,
  },
}
-- :e -- to reload this file
