--- @type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    enable_diagnostics = true,
    filesystem = {
      filtered_items = {
        -- visible = true,
        -- hide_dotfiles = true,
        always_show = {
          ".env",
          ".gitignore",
        },
        position = "right",
      },
      follow_current_file = true,
    },
    window = {
      position = "right",
    },
    diagnostics = {
      symbols = {
        hint = "", -- Hint icon
        info = "", -- Info icon
        warn = "", -- Warning icon
        error = "", -- Error icon
      },
    },
    renderers = {
      file = {
        { "icon" }, -- File icon
        { "name" }, -- File name
        { "diagnostics" }, -- Add diagnostics indicator
        { "git_status" }, -- Git status symbol
      },
      directory = {
        { "icon" }, -- Directory icon
        { "name" }, -- Directory name
        { "diagnostics" }, -- Add diagnostics indicator
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          added = "󰬈",
          modified = "󰬔",
          deleted = "󰬋",
          renamed = "󰬙",
          untracked = "󰬛",
          ignored = "󰬐",
          unstaged = "󰬜",
          staged = "󰬚",
          conflict = "󰬊",
        },
      },
    },
  },
}
