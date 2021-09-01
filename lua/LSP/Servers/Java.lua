local M = {}

M.attach = function(onAttach, LSP)
  if LSP.java then
    LSP.java.setup {
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = true
        onAttach(client)
      end
    }
  end
end

return M
