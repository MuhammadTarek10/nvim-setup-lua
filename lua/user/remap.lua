return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      i = {
        ["<C-l>"] = {
          function() return vim.fn["codeium#Accept"]() end,
          expr = true,
          silent = true,
          desc = "Accept Codeium suggestion",
        },
        ["<C-x>"] = {
          function() return vim.fn["codeium#Clear"]() end,
          expr = true,
          silent = true,
          desc = "Clear Codeium suggestion",
        },
      },
      n = {
        ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace word under cursor" },
        ["<C-A>"] = { "ggVG", desc = "Select all" },
        ["H"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
        ["L"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
      },
      v = {
        J = ":m '>+1<CR>gv=gv",
        K = ":m '<-2<CR>gv=gv",
      },
    },
  },
}
