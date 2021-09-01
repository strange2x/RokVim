local CommonVars = require("CommonVars")

-- Remapping window navigation
CommonVars.map(CommonVars.VIM_MODES.Normal, "<C-l>", "<cmd>wincmd l<CR>", CommonVars.options)
CommonVars.map(CommonVars.VIM_MODES.Normal, "<C-h>", "<cmd>wincmd h<CR>", CommonVars.options)
CommonVars.map(CommonVars.VIM_MODES.Normal, "<C-j>", "<cmd>wincmd j<CR>", CommonVars.options)
CommonVars.map(CommonVars.VIM_MODES.Normal, "<C-k>", "<cmd>wincmd k<CR>", CommonVars.options)

-- Moving between buffers
CommonVars.map(CommonVars.VIM_MODES.Normal, "<leader>.", "<cmd>bn<CR>", CommonVars.options)
CommonVars.map(CommonVars.VIM_MODES.Normal, "<leader>,", "<cmd>bp<CR>", CommonVars.options)

-- Closing a buffer
CommonVars.map(CommonVars.VIM_MODES.Normal, "<leader>q", "<cmd>bd<CR>", CommonVars.options)

-- Resizing vertical split
CommonVars.map(CommonVars.VIM_MODES.Normal, "<C-A-h>", "<cmd>vertical resize -5<CR>", CommonVars.options)
CommonVars.map(CommonVars.VIM_MODES.Normal, "<C-A-l>", "<cmd>vertical resize +5<CR>", CommonVars.options)
