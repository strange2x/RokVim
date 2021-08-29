local LuaLsp = function (onAttach, LSP)
LSP.lua.setup{
    on_attach = function (client)
        client.resolved_capabilities.document_formatting = false;
        onAttach(client);
    end
}
end

return LuaLsp;
