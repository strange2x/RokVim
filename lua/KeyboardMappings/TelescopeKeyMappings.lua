local map = vim.api.nvim_set_keymap
local options = {silent = true, noremap = true}
local VIM_MODES = {
    Normal = "n",
    Visual = "v",
    Insert = "i"
}

-- Telescope Mappings
map(VIM_MODES.Normal, "<leader>e", "<cmd>Telescope find_files<CR>", options)
map(VIM_MODES.Normal, "<leader>b", "<cmd>Telescope buffers<CR>", options)
map(VIM_MODES.Normal, "<leader>lg", "<cmd>Telescope live_grep<CR>", options)
map(VIM_MODES.Normal, "<leader>ff", "<cmd>Telescope current_buffer_fuzzy_find<CR>", options)
map(VIM_MODES.Normal, "<leader>ca", "<cmd>Telescope lsp_code_actions<CR>", options)
