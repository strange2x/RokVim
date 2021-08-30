local M = {}
M.LoadPacker = function(packer)
  packer.startup(
    function()
      -- Do Not add any plugins here, add it over in InstalledPlugins file
      use "wbthomason/packer.nvim"
      -- All the Plugins mentioned here will be loaded
      require("Plugins.LoadPlugins.MainPlugins")(use)
      require("Plugins.LoadPlugins.LoadLsp")(use)
      require("Plugins.LoadPlugins.LoadModeratePlugins")(use)
      require("Plugins.LoadPlugins.LoadMiscPlugins")(use)
    end
  )
end

return M
