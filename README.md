# TL Language Support for Neovim

Treesitter-based syntax highlighting for TL language.

## Features

- Semantic syntax highlighting using Treesitter
- Fallback to regex-based highlighting
- Support for TL-specific constructs (magic numbers, attributes, etc.)

## Installation

Using packer.nvim:

```lua
use({
  'your-username/tl-nvim',
  config = function()
    require('tl-nvim').setup()
  end
})
