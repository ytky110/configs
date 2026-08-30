local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true}
vim.g.mapleader = " "

keymap("n", "<leader>w", ":w<cr>", opt)
keymap("n", "<leader>s", ":w<cr>", opt)
keymap("n", "<leader>q", ":q!<cr>", opt)
keymap("n", "<leader>f", ":x<cr>", opt)

keymap("n", "<leader>r", ":lua ReloadConfig()<cr>", opt)

