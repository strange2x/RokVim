local M = {}

M.attach = function(onAttach, LSP)
  if LSP.cpp then
    LSP.cpp.setup {
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        onAttach(client)
      end
    }
  end
end

return M
