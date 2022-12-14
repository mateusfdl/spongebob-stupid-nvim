local vim = vim
local system = vim.fn.system

local M = {}

function M.format (s, e)
  local bufnr = vim.api.nvim_get_current_buf()

  local str = vim.api.nvim_buf_get_lines(bufnr, s-1, e, true)[1]
  local new_str = ""
  for i = 1, #str do
      local c = str:sub(i,i)
      if str:find(c)%2 == 1 then
        new_str = new_str .. c
      else
        new_str = new_str .. c:gsub("^%l", string.upper)
      end
  end

  return vim.cmd('s/' .. str .. '/' .. new_str)
end

return M
