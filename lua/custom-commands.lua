function VerticalTerminal() 
  vim.cmd "belowright vs"
  vim.cmd "vert res 50"
  vim.cmd "te"
end

vim.api.nvim_create_user_command("V", VerticalTerminal, {})
