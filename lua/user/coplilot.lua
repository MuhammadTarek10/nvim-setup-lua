return {
  "https://github.com/github/copilot.vim",
  name = "github-copilot",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<Tab>", "copilot#Accept('')", { noremap = true, silent = true, expr = true })
  end,
}
