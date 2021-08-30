local M = {}

M.config = function(formatter)
  formatter.setup(
    {
      logging = false,
      filetype = {
        javascript = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
              stdin = true
            }
          end
        },
        typescript = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
              stdin = true
            }
          end
        },
        typescriptreact = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
              stdin = true
            }
          end
        },
        json = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
              stdin = true
            }
          end
        },
        lua = {
          -- luafmt
          function()
            return {
              exe = "luafmt",
              args = {"--indent-count", 2, "--stdin"},
              stdin = true
            }
          end
        }
      }
    }
  )

  vim.api.nvim_exec(
    [[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost *.js,*.ts,*.lua,*.json,*.jsx,*.tsx FormatWrite
    augroup END
    ]],
    true
  )
end

M.setup = function()
  local is_ok, formatter = pcall(require, "formatter")
  if not is_ok then
    print "Formatter not found"
    return
  end
  M.config(formatter)
end

return M
