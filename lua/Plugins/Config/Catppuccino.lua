local M = {}

M.config = function(catppuccino)
  catppuccino.setup {
    colorscheme = "dark_catppuccino",
    integrations = {
      treesitter = true,
      native_lsp = {
        enabled = true,
        styles = {
          errors = "italic",
          hints = "italic",
          warnings = "italic",
          information = "italic"
        }
      },
      nvimtree = {
		enabled = false,
		show_root = false,
	},
    }
  }
  catppuccino.load()
end

M.setup = function()
  local status_ok, catppuccino = pcall(require, "catppuccino")
  if not status_ok then
    print "Catppuccino Theme not found"
    return
  end
  M.config(catppuccino)
end

return M
