-- =============================================================================
-- Keymap Helper --
-- =============================================================================
local map = function(mode, key, result)
	vim.api.nvim_set_keymap(
		mode,
		key,
		result,
		{ noremap = true, silent = true }
	)
end

-- =============================================================================
map('n', '<Space>', '<NOP>')
vim.g.mapleader = ' '

-- Easy Esc
-- =====================================
map('i', 'jj', '<Esc>')
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')

-- Tabs
-- =====================================
map('n', '<leader>t=', '<cmd>-tabm<CR>')
map('n', '<leader>t-', '<cmd>+tabm<CR>')
map('n', '<leader>tc', '<cmd>tabc<CR>')
map('n', '<leader>te', '<cmd>tabedit %<CR>')
map('n', '<leader>th', '<cmd>tabfirst<CR>')
map('n', '<leader>tj', '<cmd>tabnext<CR>')
map('n', '<leader>tk', '<cmd>tabprev<CR>')
map('n', '<leader>tl', '<cmd>tablast<CR>')
map('n', '<leader>tn', ':tabnew<Space>')
map('n', '<leader>tt', '<cmd>tabs<CR>')

-- Window Navigation
-- =====================================
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-d>', '<C-w>_<C-w>|')
map('n', '=', '<C-w>=')
map('n', '<leader>|', '<C-w>|')
map('n', '<leader>_', '<C-w>_')
map('n', '<leader>\\', '<C-w>v')
map('n', '<leader>-', '<C-w>s')
map('n', '<leader>q', '<C-w>q')

-- VIM commands
-- =====================================
map('n', '<leader>vc', '<cmd>e $VIMC/configs<CR>')
map('n', '<leader>vi', '<cmd>luafile $VIM/init.lua<CR>')
map('n', '<leader>vm', '<cmd>e $VIMC/keys<CR>')
map('n', '<leader>vr', '<cmd>luafile %<CR>')

