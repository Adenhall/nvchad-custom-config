local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.api.nvim_create_user_command

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("VimLeavePre", {
  pattern = "*",
  command = "!eslint_d stop",
})

cmd("CloseAllBufs", function()
  require("nvchad.tabufline").closeAllBufs()
end, {})
