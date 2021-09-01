local M = {}

M.config = function(gitsigns)
  gitsigns.setup {
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 200
    }
  }
end

M.setup = function()
  local is_ok, gitsigns = pcall(require, "gitsigns")
  if not is_ok then
    print "GitSign Not Found"
    return
  end
  M.config(gitsigns)
end

return M
