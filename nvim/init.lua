-- bootstrap lazy.nvim, LazyVim and your plugins
vim.o.grepprg = "rg --vimgrep --pcre2"
require("config.lazy")
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
