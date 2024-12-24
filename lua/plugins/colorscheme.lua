return {
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
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
}
