local M = {}

M.attach = function(onAttach, LSP)
  if LSP.sumneko_lua then
    local sumneko_binary_path = vim.fn.exepath("lua-language-server")
    local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ":h:h:h")
    local runtime_path = vim.split(package.path, ";")
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua")
    LSP.sumneko_lua.setup {
      cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"},
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
            path = runtime_path
          },
          diagnostics = {
            globals = {"vim"}
          },
          telemetry = {
            enable = false
          }
        }
      },
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        onAttach(client)
      end
    }
  end
end

return M
