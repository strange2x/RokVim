function InstallPlugins(use)
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    require = {
      require("Plugins.Config.NvimTree").setup()
    }
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-lua/popup.nvim"},
      {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
    },
    require = {
      require("Plugins.Config.Telescope").setup()
    }
  }

  use {"Pocco81/Catppuccino.nvim", require = {require("Plugins.Config.Catppuccino").setup()}}

  use {"hoob3rt/lualine.nvim", require = {require("Plugins.Config.LuaLine").setup()}}
end

return InstallPlugins
