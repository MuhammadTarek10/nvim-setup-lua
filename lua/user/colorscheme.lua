return {
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
        styles = {
          comment = { italic = true },
          keyword = { italic = true }, -- any other keyword
          type = { italic = true }, -- (preferred) int, long, char, etc
          storageclass = { italic = true }, -- static, register, volatile, etc
          structure = { italic = true }, -- struct, union, enum, etc
          parameter = { italic = true }, -- parameter pass in function
          annotation = { italic = true },
          tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        background_clear = {
          "float_win",
          "telescope",
          "toggleterm",
          "nvim-tree",
          "neo-tree",
          "bufferline",
          "which-key",
        },
      }
    end,
  },
  {
    "https://github.com/morhetz/gruvbox",
    name = "gruvbox",
  },
  {
    "https://github.com/lunacookies/vim-colors-xcode",
    name = "xcode",
  },
  {
    "https://github.com/scottmckendry/cyberdream.nvim",
    name = "cyberdream",
  },
  {
    "https://github.com/Mofiqul/dracula.nvim",
    name = "dracula",
  },
  {
    "https://github.com/AlexvZyl/nordic.nvim",
    name = "nordic",
  },
  {
    "https://github.com/catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "https://github.com/folke/tokyonight.nvim",
    name = "tokyonight",
  },
}
