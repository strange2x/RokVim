local M = {}

M.attach = function(onAttach, LSP)
  if LSP.tsserver then
    _G.lsp_organize_imports = function()
      local params = {
        command = "_typescript.organizeImports",
        arguments = {vim.api.nvim_buf_get_name(0)},
        title = ""
      }
      vim.lsp.buf.execute_command(params)
    end

    LSP.tsserver.setup {
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        onAttach(client)
      end
    }
  end
end

return M
