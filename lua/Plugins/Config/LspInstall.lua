local M = {}

M.config = function(lspinstall, lspconfig)
  local function setup_servers()
    lspinstall.setup()
    local servers = lspinstall.installed_servers()
    for _, server in pairs(servers) do
      lspconfig[server].setup {}
    end
  end

  setup_servers()

  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  lspinstall.post_install_hook = function()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
  end
end

M.setup = function(lspconfig)
  local is_ok, lspinstall = pcall(require, "lspinstall")
  if not is_ok then
    print "LspInstall not found"
    return
  end
  M.config(lspinstall, lspconfig)
end

return M
