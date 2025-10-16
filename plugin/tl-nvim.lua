vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tl',
  callback = function()
    -- Автоматически загружаем подсветку для TL файлов
    vim.cmd('runtime after/syntax/tl.vim')
  end
})
