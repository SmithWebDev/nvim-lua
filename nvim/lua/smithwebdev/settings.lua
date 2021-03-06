-- =============================================================================
-- Standard Settings Helper --
-- =============================================================================
local o=vim.o
local b=vim.bo
local w=vim.wo
-- =============================================================================

-- Completion Options --
o.completeopt='menuone,noinsert,noselect'
o.updatetime=3000

-- Fold Options --
w.foldmethod='indent'
w.foldnestmax=3
w.foldenable=false
w.foldlevel=99

-- Indentation Options --
b.expandtab=true
b.tabstop=2
b.shiftwidth=2
b.smartindent=true
b.softtabstop=2

-- Line Options --
b.textwidth=120
o.listchars='tab:→ ,trail:·,extends:…,eol:↩'
o.showbreak='+++'
o.scrolloff=999
o.sidescrolloff=15
w.list=true

-- Search Options --
o.ignorecase=true
o.smartcase=true
o.wrapscan=true

-- File --
b.swapfile=false
o.autowrite=true
o.autowriteall=true
o.mouse='a'
o.termguicolors=true
o.t_Co='256'

-- Line Numbering --
w.number=true
w.relativenumber=true

-- Window/Buffer/Tab Options --
o.hidden=true
o.cmdheight=1
o.pumheight=10
o.pumblend=25
o.splitbelow=true
o.splitright=true
o.backup=false
o.writebackup=false
o.clipboard='unnamedplus'

vim.cmd('syntax on')
