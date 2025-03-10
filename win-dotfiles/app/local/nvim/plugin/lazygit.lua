--          ╔═════════════════════════════════════════════════════════╗
--          ║                         Lazygit                         ║
--          ╚═════════════════════════════════════════════════════════╝
local split_sensibly = function()
  if vim.api.nvim_win_get_width(0) > math.floor(vim.api.nvim_win_get_height(0) * 2.3) then
    vim.cmd("vs")
  else
    vim.cmd("split")
  end
end
vim.keymap.set("n", "<leader>gg", function()
  split_sensibly()
  vim.cmd('terminal lazygit')
end, { desc = 'Lazygit' })
