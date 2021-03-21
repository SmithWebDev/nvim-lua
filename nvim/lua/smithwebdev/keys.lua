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

-- **Packer 
-- =====================================
map('n', '<leader>Pc', ':PackerClean<CR>' )
map('n', '<leader>Pi', ':PackerInstall<CR>' )
map('n', '<leader>Ps', ':PackerSync<CR>' )
map('n', '<leader>Pu', ':PackerUpdate<CR>' )

-- Resize window panes
-- =====================================
map('n', '<up>', ':resize +2<CR>')
map('n', '<down>', ':resize -2<CR>')
map('n', '<left>', ':vertical resize +2<CR>')
map('n', '<right>', ':vertical resize -2<CR>')

-- Tabs
-- =====================================
map('n', '<leader>t=', ':-tabm<CR>')
map('n', '<leader>t-', ':+tabm<CR>')
map('n', '<leader>tc', ':tabc<CR>')
map('n', '<leader>te', ':tabedit %<CR>')
map('n', '<leader>th', ':tabfirst<CR>')
map('n', '<leader>tj', ':tabnext<CR>')
map('n', '<leader>tk', ':tabprev<CR>')
map('n', '<leader>tl', ':tablast<CR>')
map('n', '<leader>tn', ':tabnew')
map('n', '<leader>tt', ':tabs<CR>')

-- Tabs
-- =====================================
map('n', '<M-j>', [[mz:m+<CR>`z]])


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
map('n', '<leader>va', ':e $VIMA<CR>')
map('n', '<leader>vc', ':e $VIMC<CR>')
map('n', '<leader>vi', ':luafile $VIM/init.lua<CR>')
map('n', '<leader>vm', ':e $VIMM<CR>')
map('n', '<leader>vr', ':luafile %<CR>')

