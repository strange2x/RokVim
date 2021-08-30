local CommonVars = {}
CommonVars.map = vim.api.nvim_set_keymap
CommonVars.options = {silent = true, noremap = true}
CommonVars.VIM_MODES = {
  Normal = "n",
  Visual = "v",
  Insert = "i"
}
return CommonVars
