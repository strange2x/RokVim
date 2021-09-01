local M = {}

M.attach = function(onAttach, LSP)
  if LSP.pyright then
    LSP.pyright.setup {
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        onAttach(client)
      end
    }
  end
end

return M
