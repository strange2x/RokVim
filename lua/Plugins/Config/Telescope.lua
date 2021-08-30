local CommonVars = require("CommonVars")
local M = {}

M.config = function(telescope)
  telescope.setup {
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case"
      },
      prompt_prefix = "> ",
      selection_caret = "> ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "descending",
      layout_strategy = "vertical",
      layout_config = {
        horizontal = {
          mirror = false
        },
        vertical = {
          mirror = false
        }
      },
      -- file_sorter = require "telescope.sorters".get_fuzzy_file,
      file_ignore_patterns = {"node_modules"},
      -- generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,
      winblend = 8,
      border = {},
      borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      color_devicons = true,
      use_less = true,
      path_display = {},
      set_env = {["COLORTERM"] = "truecolor"} -- default = nil,
      --file_previewer = require "telescope.previewers".vim_buffer_cat.new,
      -- grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new
      --qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case" -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      }
    }
  }
  telescope.load_extension("fzf")
end

M.keymaps = function(map, options, VIM_MODES)
  map(VIM_MODES.Normal, "<leader>e", "<cmd>Telescope find_files<CR>", options)
  map(VIM_MODES.Normal, "<leader>b", "<cmd>Telescope buffers<CR>", options)
  map(VIM_MODES.Normal, "<leader>lg", "<cmd>Telescope live_grep<CR>", options)
  map(VIM_MODES.Normal, "<leader>ff", "<cmd>Telescope current_buffer_fuzzy_find<CR>", options)
  map(VIM_MODES.Normal, "<leader>ca", "<cmd>Telescope lsp_code_actions<CR>", options)
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
