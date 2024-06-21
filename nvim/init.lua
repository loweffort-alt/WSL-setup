-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

if vim.fn.executable("clip.exe") == 1 then
  vim.api.nvim_create_augroup("WSLYank", { clear = true })
  vim.api.nvim_create_autocmd("TextYankPost", {
    group = "WSLYank",
    pattern = "*",
    callback = function()
      if vim.v.event.operator == "y" and vim.v.event.regname == "+" then
        vim.fn.system("clip.exe", vim.fn.getreg("+"))
      end
    end,
  })
end
