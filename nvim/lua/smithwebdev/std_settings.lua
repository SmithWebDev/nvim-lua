-- =============================================================================
-- Standard Settings Helper --
-- =============================================================================

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}
local function set(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then ['o'][scope][key] = value end
end


-- =============================================================================

-- Completion Options --
set('o', 'completeopt', 'menuone,noinsert,noselect')
set('o', 'updatetime', 3000)

-- Fold Options --
set('w', 'foldmethod', 'indent')
set('w', 'foldnestmax', 3)
set('w', 'foldenable', false)
set('w', 'foldlevel', 99)

-- Indentation Options --
set('b', 'expandtab', true)
set('b', 'tabstop', 2)
set('b', 'shiftwidth', 2)
set('b', 'smartindent', true)
set('b', 'softtabstop', 2)

-- Line Options --
set('b', 'textwidth', 120)
set('o', 'showbreak', '+++')
set('o', 'scrolloff', 999)
set('o', 'sidescrolloff', 15)
set('w', 'list', true)
set('w', 'listchars', 'tab:→ ,trail:·,extends:…,eol:↩')

-- Search Options --
set('o', 'ignorecase', true)
set('o', 'smartcase', true)
set('o', 'wrapscan', true)

-- File --
set('b', 'swapfile', false)
set('o', 'autowrite', true)
set('o', 'autowriteall', true)
set('o', 'mouse', 'a')
set('o', 'termguicolors', true)
set('o', 't_Co', '256')

-- Line Numbering --
set('w', 'number', true)
set('w', 'relativenumber', true)

-- Window/Buffer/Tab Options --
set('o', 'hidden', true)
set('o', 'cmdheight', 1)
set('o', 'pumheight', 10)
set('o', 'pumblend', 25)
set('o', 'splitbelow', true)
set('o', 'splitright', true)
set('o', 'backup', false)
set('o', 'writebackup', false)
set('o', 'clipboard', 'unnamedplus')
