local utils = require 'smithwebdev.utils'
local set = vim.g
utils.keymap('n', '<leader>e', ':NvimTreeToggle<CR>')

set.nvim_tree_icons = {
     default= '',
     symlink= '',
     git= {
       unstaged= "✗",
       staged= "✓",
       unmerged= "",
       renamed= "➜",
       untracked= "★"
       },
     folder= {
       default= "",
       open= "",
       empty= "",
       empty_open= "",
       symlink= "",
       }
     }
