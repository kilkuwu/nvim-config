vim.api.nvim_create_autocmd("TermOpen", {
  callback = function() 
    vim.cmd "startinsert" 
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function() 
    local VertSplit = function() 
      vim.cmd "vs"
      vim.cmd "vert res 50"
    end

    vim.keymap.set('n', "<F9>", function()
      vim.cmd "w"
      VertSplit()
      vim.cmd "te if (build_cpp %:r) {}"
    end)

    vim.keymap.set('n', '<F10>', function() 
      VertSplit()
      vim.cmd "te %:r"
    end)

    vim.keymap.set('n', '<C-F9>', function()
      vim.cmd("w")
      VertSplit()
      vim.cmd "te if (build_cpp %:r) { %:r }"
    end)
  end
})
