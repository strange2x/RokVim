local CommonVars = require("CommonVars")
local M = {}

M.config = function(nvimtree_config)
  local NvimTree = nvimtree_config.nvim_tree_callback
  vim.g.nvim_tree_side = "left"
  vim.g.nvim_tree_width = 50
  vim.g.nvim_tree_auto_close = 1
  vim.g.nvim_tree_quit_on_open = 1
  vim.g.nvim_tree_follow = 1
  vim.g.nvim_tree_icon_padding = " "
  vim.g.nvim_tree_highlight_opened_files = 1
  vim.g.nvim_tree_indent_markers = 1
end

M.keymaps = function(map, options, VIM_MODES)
  map(VIM_MODES.Normal, "<A-e>", "<cmd>NvimTreeToggle<CR>", options)
end

M.setup = function()
  local status_ok, nvimtree_config = pcall(require, "nvim-tree.config")
  if not status_ok then
    print "Failed to load NvimTree"
    return
  end
  M.config(nvimtree_config)
  M.keymaps(CommonVars.map, CommonVars.options, CommonVars.VIM_MODES)
end

return M
