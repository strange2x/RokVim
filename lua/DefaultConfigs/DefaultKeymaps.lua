local map = vim.api.nvim_set_keymap
local options = {silent = true, noremap = true}
local VIM_MODES = {
    Normal = "n",
    Visual = "v",
    Insert = "i"
}

-- Remapping window navigation
map(VIM_MODES.Normal, "<C-l>", "<cmd>wincmd l<CR>", options)
map(VIM_MODES.Normal, "<C-h>", "<cmd>wincmd h<CR>", options)
map(VIM_MODES.Normal, "<C-j>", "<cmd>wincmd j<CR>", options)
map(VIM_MODES.Normal, "<C-k>", "<cmd>wincmd k<CR>", options)

-- Moving between buffers
map(VIM_MODES.Normal, "<leader>.", "<cmd>bn<CR>", options)
map(VIM_MODES.Normal, "<leader>,", "<cmd>bp<CR>", options)

-- Closing a buffer
map(VIM_MODES.Normal, "<leader>q", "<cmd>bd<CR>", options)

