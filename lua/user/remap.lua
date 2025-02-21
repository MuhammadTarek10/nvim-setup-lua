return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      i = {},
      n = {
        ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace word under cursor" },
        ["<C-A>"] = { "ggVG", desc = "Select all" },
      },
      v = {
        J = ":m '>+1<CR>gv=gv",
        K = ":m '<-2<CR>gv=gv",
      },
    },
  },
}
