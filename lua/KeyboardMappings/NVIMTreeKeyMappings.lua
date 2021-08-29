local map = vim.api.nvim_set_keymap
local options = {silent = true, noremap = true}
local VIM_MODES = {
    Normal = "n",
    Visual = "v",
    Insert = "i"
}

-- NvimTree mappings
map(VIM_MODES.Normal, "<A-e>", "<cmd>NvimTreeToggle<CR>", options)
