local M = {}

M.config = function(nvimtreesitter_config)
  nvimtreesitter_config.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {"c", "rust"}, -- List of parsers to ignore installing
    highlight = {
      enable = true, -- false will disable the whole extension
      disable = {"c", "rust"}, -- list of language that will be disabled
      custom_captures = {
        ["foo.bar"] = "Identifier"
      },
      additional_vim_regex_highlighting = false
    },
    indent = {
      enable = true
    }
  }
end

M.setup = function()
  local is_ok, nvimtreesitter_config = pcall(require, "nvim-treesitter.configs")
  if not is_ok then
    print "Nvim Treesitter not found"
    return
  end
  M.config(nvimtreesitter_config)
end

return M
