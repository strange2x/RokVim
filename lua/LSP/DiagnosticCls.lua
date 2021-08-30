local M = {}

M.config = function(dlsconfig)
  local eslint = require "diagnosticls-configs.linters.eslint"
  local standard = require "diagnosticls-configs.linters.standard"
  dlsconfig.setup {
    ["javascript"] = {
      linter = {eslint, standard}
    },
    ["typescript"] = {
      linter = {eslint, standard}
    },
    ["javascriptreact"] = {
      linter = {eslint, standard}
    },
    ["typescriptreact"] = {
      linter = {eslint, standard}
    }
  }
end

M.setup = function()
  local is_ok, dlsconfig = pcall(require, "diagnosticls-configs")
  if not is_ok then
    print "DiagnosticCls not found"
    return
  end
  M.config(dlsconfig)
end

return M
