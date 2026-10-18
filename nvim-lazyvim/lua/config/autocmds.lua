-- Enable indent folds for some filetypes (from my_configs.vim)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "java", "json", "javascript", "typescript", "terraform", "yaml" },
  callback = function()
    vim.opt_local.foldmethod = "indent"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "kitty",
  callback = function()
    vim.opt_local.foldmethod = "marker"
  end,
})
