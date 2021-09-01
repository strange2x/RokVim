local M = {}

M.config = function(LSP, onAttach)
  require("LSP.Servers.Lua").attach(onAttach, LSP)
  require("LSP.Servers.Typescript").attach(onAttach, LSP)
  -- require("LSP.Servers.Java").attach(onAttach, LSP)
  require("LSP.Servers.Python").attach(onAttach, LSP)
  require("LSP.Servers.Cpp").attach(onAttach, LSP)
  LSP.diagnosticls.setup {
    on_attach = onAttach
  }
end

M.setup = function(onAttach)
  local is_present, lspconfig = pcall(require, "lspconfig")
  if not is_present then
    print "LspConfig not found"
    return
  end
  M.config(lspconfig, onAttach)
end

return M
