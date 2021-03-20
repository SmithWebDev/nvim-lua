local scopes = {o = vim.o, b = vim.bo, w = vim.wo}
local function set(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then scopes['o'][key] = value end
end

-- Indentation Options
local indent = 2
set('b', 'autoindent', true)
set('b', 'expandtab', true)
set('b', 'tabstop', indent)
set('b', 'shiftwidth', indent)
set('b', 'smartindent', true)
set('b', 'smarttab', true)
set('b', 'softtabstop', indent)

-- Search Options
set('o', 'hlsearch', true)
set('o', 'ignorecase', true)
set('o', 'incsearch', true)
set('o', 'smartcase', true)
set('o', 'wrapscan', true)

-- File 
set('o', 'autowrite', true)
set('o', 'autowriteall', true)
set('o', 'mouse', 'a')
set('o', 'termguicolors', true)

-- Line Numbering
set('w', 'number', true)
set('w', 'relativenumber', true)

