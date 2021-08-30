local M = {}

M.config = function(lualine)
  lualine.setup {
    options = {
      theme = "catppuccino"
    }
  }
end

M.setup = function()
  local status_ok, lualine = pcall(require, "lualine")
  if not status_ok then
    print "LuaLine not found"
    return
  end
  M.config(lualine)
end

return M
