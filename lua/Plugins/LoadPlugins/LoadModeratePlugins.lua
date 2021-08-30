function InstallPlugins(use)
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    require = {
      require("Plugins.Config.TreeSitter").setup()
    }
  }
  use {
    "windwp/nvim-autopairs",
    require = {
      require("Plugins.Config.AutoPairs").setup()
    }
  }
end

return InstallPlugins
