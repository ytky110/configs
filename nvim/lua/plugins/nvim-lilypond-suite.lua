vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.ly", "*.ily" },
  command = "syntax sync fromstart",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lilypond", "ly", "ily" },
  callback = function()
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = false
    vim.opt_local.cindent = false
    vim.opt_local.indentexpr = ""
    vim.opt_local.showmatch = false
  end,
})

return {
  "martineausimon/nvim-lilypond-suite",
  ft = { "lilypond", "tex" },
  config = function()
    require("nvls").setup({})
  end,
}
