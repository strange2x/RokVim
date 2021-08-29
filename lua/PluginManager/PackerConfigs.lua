local InstallPlugins = require("PluginManager/InstalledPlugins");

return require('packer').startup(function()
  -- Do Not add any plugins here, add it over in InstalledPlugins file
  use 'wbthomason/packer.nvim'
  -- All the Plugins mentioned here will be loaded
  InstallPlugins(use);
end)
