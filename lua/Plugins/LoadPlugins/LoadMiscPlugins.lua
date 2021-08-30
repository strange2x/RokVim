function InstallPlugins(use)
  use {
    "lewis6991/gitsigns.nvim",
    requires = {"nvim-lua/plenary.nvim"},
    require = {
      require("Plugins.Config.GitSigns").setup()
    }
  }
  use {"tpope/vim-surround"}
  use {"tpope/vim-commentary"}
  use {
    "tpope/vim-fugitive"
  }
end

return InstallPlugins
