local map = vim.api.nvim_set_keymap
local options = {silent = true, noremap = true}
local VIM_MODES = {
  Normal = "n",
  Visual = "v",
  Insert = "i"
}

map(VIM_MODES.Normal, "<leader>gg", "<cmd>Git<CR>", options)
map(VIM_MODES.Normal, "<leader>gs", "<cmd>Git status<CR>", options)
map(VIM_MODES.Normal, "<leader>gb", "<cmd>Git branch<CR>", options)
map(VIM_MODES.Normal, "<leader>gc", "<cmd>Git commit<CR>", options)
