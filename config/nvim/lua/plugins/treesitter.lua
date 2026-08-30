--[[
return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    main = "nvim-treesitter.config",
    lazy = false,
    opts = {
        ensure_installed = {
            "elixir",
        },
        highlight = {
            enable = true,
            disable = { "perl" },
        },
    },
}
]]

vim.api.nvim_create_autocmd('FileType', {
    -- pattern = { '<filetype>' },
    pattern = { 'elixir', 'python', 'nasm' },
    callback = function() vim.treesitter.start() end,
})

--vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
}
