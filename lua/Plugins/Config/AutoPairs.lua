local M = {}

M.config = function(autopairs)
  autopairs.setup {}
end

M.setup = function()
  local is_ok, autopairs = pcall(require, "nvim-autopairs")
  if not is_ok then
    print "Autopairs not found"
    return
  end
  M.config(autopairs)
end

return M
