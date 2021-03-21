-- =============================================================================
-- AutoCommands Helper --
-- =============================================================================

local auto = vim.api.nvim_exec
local function set_auto(name, cmds)
  local acmd = 'augroup' .. name .. ' au! '
  for k, _ in pairs(cmds) do
    acmd = acmd .. k .. ' '
  end
  acmd = acmd .. 'augroup END'
  vim.api.nvim_exec(cmds, false)
end
-- =============================================================================

-- Automatically exit from Insert mode
auto(
  [[
    augroup exitInsert
      au CursorHoldI * stopinsert
      au InsertEnter * let updaterestore=&updatetime | set updatetime=3000
      au InsertLeave * let &updatetime=updaterestore
    augroup END
  ]], true
)

-- Saves on text change or exit Insert mode
auto(
  [[
    augroup autosave
        au!
        au BufRead * if &filetype == "" | setlocal ft=text | endif
        au TextChanged,InsertLeave * if &readonly == 0 | silent w | endif
    augroup END
  ]], true
)


-- Attempts to refactor
--set_auto('exitInsert', { 'au CursorHoldI * stopinsert InsertEnter * let updaterestore=&updatetime | set updatetime=3000 InsertLeave * let &updatetime=updaterestore'})
