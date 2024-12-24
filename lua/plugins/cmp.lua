--- @type LazySpec
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    local luasnip = require "luasnip"
    local border_opts = {
      border = "single",
      winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
    }

    return require("astrocore").extend_tbl(opts, {
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      window = {
        completion = cmp.config.window.bordered(border_opts),
        documentation = cmp.config.window.bordered(border_opts),
      },
      mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
        ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
        ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
        ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },

        -- Handle Tab for LSP and Snippets
        ["<Tab>"] = cmp.mapping(function(fallback)
          -- If completion menu is visible, select and confirm the current item
          if cmp.visible() then
            cmp.confirm { select = true } -- Automatically confirm the current selected item
          -- If a snippet can be jumped, use it
          elseif luasnip.jumpable(1) then
            luasnip.jump(1)
          else
            fallback() -- Default Tab behavior (e.g., insert space)
          end
        end, { "i", "s" }),

        -- Handle Shift+Tab for LSP and Snippets
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          -- If completion menu is visible, navigate to the previous suggestion
          if cmp.visible() then
            cmp.select_prev_item { behavior = cmp.SelectBehavior.Select }
          -- If a snippet can be jumped backwards, use it
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback() -- Default Shift-Tab behavior
          end
        end, { "i", "s" }),

        -- Optionally, you can keep Enter to confirm the current item explicitly
        ["<CR>"] = cmp.mapping.confirm { select = true },
      },
    })
  end,
}
