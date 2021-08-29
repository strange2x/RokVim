local eslint = require "diagnosticls-configs.linters.eslint"
local standard = require "diagnosticls-configs.linters.standard"

function enableDiagCtl(dlsconfig)
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

return enableDiagCtl
