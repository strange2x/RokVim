require("LspSetup/LspInstallConfig");
require("LspSetup/Completions");
require("LspSetup/TreeSitter");

local LSP = require("lspconfig")
local onAttach = require("LspSetup.OnAttachConfig")

require("LspSetup.LSP.LuaLsp")(onAttach, LSP);
require("LspSetup.LSP.TsServer")(onAttach, LSP);

local filetypes = {
  javascript = "eslint",
  javascriptreact = "eslint",
  typescript = "eslint",
  typescriptreact = "eslint"
}

local linters = {
  eslint = {
    sourceName = "eslint",
    command = "eslint_d",
    rootPatterns = {".eslintrc.js", "package.json", ".eslintrc.json", ".eslintrc.yml"},
    debounce = 100,
    args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
    parseJson = {
      errorsRoot = "[0].messages",
      line = "line",
      column = "column",
      endLine = "endLine",
      endColumn = "endColumn",
      message = "${message} [${ruleId}]",
      security = "severity"
    },
    securities = {[2] = "error", [1] = "warning"}
  }
}

LSP.diagnosticls.setup {
  on_attach = onAttach,
  filetypes = vim.tbl_keys(filetypes),
  init_options = {
    filetypes = filetypes,
    linters = linters
  }
}
