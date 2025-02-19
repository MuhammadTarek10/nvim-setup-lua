return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      i = {
        ["<S-Tab>"] = {},
      },
      n = {
        ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace word under cursor" },
      },
      v = {
        J = ":m '>+1<CR>gv=gv",
        K = ":m '<-2<CR>gv=gv",
      },
    },
  },
}
