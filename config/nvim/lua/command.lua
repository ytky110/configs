vim.api.nvim_create_user_command('W', 'write', {})
-- vim.api.nvim_create_user_command('Q', 'quit', {})
vim.api.nvim_create_user_command('Q', 'quit<bang>', { bang = true })
vim.api.nvim_create_user_command('X', 'wq', {})

