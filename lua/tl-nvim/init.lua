local M = {}

function M.setup()
  -- Проверяем, установлен ли treesitter
  local has_treesitter, _ = pcall(require, 'nvim-treesitter')
  if not has_treesitter then
    vim.notify("tl-nvim: nvim-treesitter not found!", vim.log.levels.WARN)
    return
  end

  -- Регистрируем парсер для TL (если нужно)
  local configs = require('nvim-treesitter.configs')
  if not pcall(require, 'tree-sitter-tl') then
    -- Если парсер не установлен, можно добавить инструкцию по установке
    vim.notify("tl-nvim: tree-sitter parser for TL not found!", vim.log.levels.WARN)
  end

  -- Настраиваем подсветку
  configs.setup({
    ensure_installed = {}, -- можно добавить 'tl' если парсер доступен
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  })
end

return M
