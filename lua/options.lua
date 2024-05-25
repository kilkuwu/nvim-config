local config  = {
  -- indent
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  softtabstop = 2,

  autoindent = true,
  smartindent = true,
  breakindent = true,

  number = true,
  relativenumber = true,

  mouse = 'a',

  wrap = false,

  swapfile = false,
  backup = false,
  undodir = os.getenv("LOCALAPPDATA") .. "\\nvim\\undodir",
  undofile = true,

  scrolloff = 8,

  pumheight = 8,

  signcolumn = "yes",

  -- configure powershell
  shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  -- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  -- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(config)
  do
  vim.opt[option] = value
end

vim.opt.cino:append("L0")
vim.opt.indentkeys:remove(":")


