return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  keys = {
    { "<C-P>", "<Cmd>FlutterRun<CR>", mode = { "n" }, desc = "Flutter Run" },
    { "<C-O>", "<Cmd>FlutterQuit<CR>", mode = { "n" }, desc = "Flutter Quit" },
    { "<C-I>", "<Cmd>FlutterLogToggle<CR>", mode = { "n" }, desc = "Flutter Toggle Log" },
    { "<C-C>", "<Cmd>FlutterLogClear<CR>", mode = { "n" }, desc = "Flutter Clear Log" },
  },
  config = function()
    require("flutter-tools").setup {
      widget_guides = {
        enabled = false,
      },
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        },
      },
      outline = {
        auto_open = false,
      },
      lsp = {
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          updateImportsOnRename = true,
          enableSnippets = true,
        },
      },
    }
  end,
}
