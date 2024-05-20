vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use "ayu-theme/ayu-vim"
  use "ellisonleao/gruvbox.nvim"
  use "catppuccin/nvim"
  use "loctvl842/monokai-pro.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use { "nvim-treesitter/nvim-treesitter", run = { ":TSUpdate" } }
  use "ray-x/lsp_signature.nvim"
  use "MunifTanjim/prettier.nvim"
  use "windwp/nvim-ts-autotag"
  use "folke/neodev.nvim"
  use "filipdutescu/renamer.nvim"
  use "onsails/lspkind.nvim"

  -- Autocomplete, diagnostics
  use "jose-elias-alvarez/null-ls.nvim"
  use "nvim-lua/plenary.nvim"
  use "windwp/nvim-autopairs"

  -- Nvim
  use "akinsho/bufferline.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nmac427/guess-indent.nvim"
  use "pocco81/auto-save.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "numToStr/Comment.nvim"
  use "nvim-lualine/lualine.nvim"
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "akinsho/toggleterm.nvim"
  use 'wakatime/vim-wakatime'
end)
