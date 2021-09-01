local VIM_MODES = require("CommonVars").VIM_MODES

local createCustomLspCommands = function()
  vim.cmd("command! LspDefinition lua vim.lsp.buf.definition()")
  vim.cmd("command! LspFormat lua vim.lsp.buf.formatting()")
  vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
  vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
  vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
  vim.cmd("command! LspOrganizeImports lua lsp_organize_imports()")
  vim.cmd("command! LspReferences lua vim.lsp.buf.references()")
  vim.cmd("command! LspTypeDefenitions lua vim.lsp.buf.type_defenition()")
  vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
  vim.cmd("command! LspDiagnosticsGoPrevious lua vim.lsp.diagnostic.goto_prev()")
  vim.cmd("command! LspDiagnosticsGoNext lua vim.lsp.diagnostic.goto_next()")
  vim.cmd("command! LspDiagnosticsShowLine lua vim.lsp.diagnostic.show_line_diagnostics()")
  vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
end

local createLspKeymappings = function(BufferMap, BufferNumber, LspKeymaps)
  local keymapOptions = {silent = true}
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspGotoDefinition, "<cmd>LspDefinition<CR>", keymapOptions)
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspRename, "<cmd>LspRename<CR>", keymapOptions)
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspTypeDefenition, "<cmd>LspTypeDefenitions<CR>", keymapOptions)
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspReferences, "<cmd>LspReferences<CR>", keymapOptions)
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspHover, "<cmd>LspHover<CR>", keymapOptions)
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspOrganizeImports, "<cmd>LspOrganizeImports<CR>", keymapOptions)
  BufferMap(
    BufferNumber,
    VIM_MODES.Normal,
    LspKeymaps.LspDiagnosticsGoPrevious,
    "<cmd>LspDiagnosticsGoPrevious<CR>",
    keymapOptions
  )
  BufferMap(
    BufferNumber,
    VIM_MODES.Normal,
    LspKeymaps.LspDiagnosticsGoNext,
    "<cmd>LspDiagnosticsGoNext<CR>",
    keymapOptions
  )
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspCodeAction, "<cmd>LspCodeAction<CR>", keymapOptions)
  BufferMap(
    BufferNumber,
    VIM_MODES.Normal,
    LspKeymaps.LspDiagnosticsShowLine,
    "<cmd>LspDiagnosticsShowLine<CR>",
    keymapOptions
  )
  BufferMap(BufferNumber, VIM_MODES.Normal, LspKeymaps.LspSignatureHelp, "<cmd>LspSignatureHelp<CR>", keymapOptions)
end

local enableDocumentFormatting = function(Client)
  if Client.resolved_capabilities.document_formatting then
    vim.api.nvim_exec(
      [[
            augroup LspAutoCommands
                autocmd ! * <buffer>
                autocmd BufWritePost <buffer>
                LspFormatting
            augroup END
        ]],
      true
    )
  end
end

local onAttach = function(Client, BufferNumber)
  createCustomLspCommands()
  createLspKeymappings(vim.api.nvim_buf_set_keymap, BufferNumber, require("LSP.LspKeyMappings"))
  enableDocumentFormatting(Client)
end

return onAttach
