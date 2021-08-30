function InstallPlugins(use)
  use {
    "neovim/nvim-lspconfig",
    requires = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "kabouzeid/nvim-lspinstall",
      "mhartington/formatter.nvim",
      "creativenull/diagnosticls-configs-nvim"
    },
    require = {
      require("LSP").setup(require("LSP.OnAttach")),
      require("Plugins.Config.Completions").setup(),
      require("Plugins.Config.LspInstall").setup(require("lspconfig")),
      require("Plugins.Config.Formatter").setup(),
      require("LSP.DiagnosticCls").setup()
    }
  }
end

return InstallPlugins
