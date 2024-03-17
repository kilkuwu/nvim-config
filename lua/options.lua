vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.mouse = 'a'

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.cmd("set cino+=L0")
vim.cmd("set indentkeys-=:")

vim.opt.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
-- vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
-- vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.g.mapleader = " "
