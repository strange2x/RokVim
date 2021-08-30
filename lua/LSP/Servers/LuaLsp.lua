local M = {}

M.attach = function(onAttach, LSP)
  if LSP.sumneko_lua then
    LSP.sumneko_lua.setup {
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        onAttach(client)
      end
    }
  end
end

return M
