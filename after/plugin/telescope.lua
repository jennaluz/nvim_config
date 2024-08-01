local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fg', builtin.git_files, {})    -- search through GIT directory
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   -- search through local directory
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})    -- grep search
