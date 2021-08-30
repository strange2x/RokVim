-- Load the theme
require("Catppuccino")

-- Load the LSP
require("LspSetup")

-- Enable NVIMTree Configs
require("KeyboardMappings/NVIMTreeKeyMappings")
require("PluginManager/NVIMTreeConfigs")

-- Enable Telescope Configs
require("KeyboardMappings/TelescopeKeyMappings")
require("PluginManager/TelescopeConfigs")

-- Enable LuaLine
require("PluginManager/LuaLine")

-- Enable Format
require("PluginManager/FormatConfigs")

-- Enable Autopairs
require("PluginManager/AutoPairsConfigs")

-- Enable GitSigns
require("PluginManager.GitsignConfigs")
