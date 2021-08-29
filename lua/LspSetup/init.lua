require("LspSetup/LspInstallConfig")
require("LspSetup/Completions")
require("LspSetup/TreeSitter")

local LSP = require("lspconfig")
local onAttach = require("LspSetup.OnAttachConfig")

local dlsconfig = require "diagnosticls-configs"

dlsconfig.init {
  -- Your custom attach function
  on_attach = onAttach
}

--Enable plugins here to get the Lsp diagnosticls
require("LspSetup.LSP.LuaLsp")(onAttach, LSP)
require("LspSetup.LSP.TsServer")(onAttach, LSP)

LSP.diagnosticls.setup {
  on_attach = onAttach
}

require("LspSetup.DiagnosticctlsConfigs")(dlsconfig)
