local CommonVars = require("CommonVars")
local M = {}

M.config = function(telescope)
  telescope.setup {
    defaults = {
      prompt_prefix = "   ",
      selection_caret = "   ",
      layout_strategy = "vertical",
      file_ignore_patterns = {"node_modules"},
      winblend = 6
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case" -- or "ignore_case" or "respect_case" or "smart_case" (default)
      }
    }
  }
  telescope.load_extension("fzf")
end

M.lsp_keymaps = function(map, options, VIM_MODES)
  map(VIM_MODES.Normal, "<leader>ca", "<cmd>Telescope lsp_code_actions<CR>", options)
  map(VIM_MODES.Normal, "<leader>wd", "<cmd>Telescope lsp_workspace_diagnostics<CR>", options)
  map(VIM_MODES.Normal, "<leader>dD", "<cmd>Telescope lsp_document_diagnostics<CR>", options)
  map(VIM_MODES.Normal, "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>", options)
  map(VIM_MODES.Normal, "<leader>lr", "<cmd>Telescope lsp_references<CR>", options)
  map(VIM_MODES.Normal, "<leader>ld", "<cmd>Telescope lsp_definitions<CR>", options)
  map(VIM_MODES.Normal, "<leader>li", "<cmd>Telescope lsp_implementations<CR>", options)
end

M.keymaps = function(map, options, VIM_MODES)
  map(VIM_MODES.Normal, "<leader>e", "<cmd>Telescope find_files<CR>", options)
  map(VIM_MODES.Normal, "<leader>b", "<cmd>Telescope buffers<CR>", options)
  map(VIM_MODES.Normal, "<leader>lg", "<cmd>Telescope live_grep<CR>", options)
  map(VIM_MODES.Normal, "<leader>ff", "<cmd>Telescope current_buffer_fuzzy_find<CR>", options)

  -- This keymaps only work if there is LSP added to Nvim
  local is_present, _ = pcall(require, "lspconfig")
  if is_present then
    M.lsp_keymaps(map, options, VIM_MODES)
  end
end

M.setup = function()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    print "Failed to load Telescope"
    return
  end
  M.config(telescope)
  M.keymaps(CommonVars.map, CommonVars.options, CommonVars.VIM_MODES)
end

return M
