local Tsserver = function (onAttach, LSP)
LSP.tsserver.setup{
    on_attach = function (client)
        client.resolved_capabilities.document_formatting = false;
        onAttach(client);
    end
}
end

return Tsserver;
