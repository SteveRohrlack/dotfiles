return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false,
      theme = "wave",
      dimInactive = true,
      transparent = false,
      colors = {
        palette = {
          fujiWhite = "#b8b4d0", -- foreground
          oldWhite = "#9997a9", -- Dark foreground (statuslines)
          fujiGray = "#587673", -- comments
          carpYellow = "#c6bb95", -- identifiers
          surimiOrange = "#c6bb95", -- const, import, bools
          springGreen = "#38a082", -- strings
          sakuraPink = "#38a082", -- numbers
          springViolet2 = "#38a082", -- brackets, punctuation
          oniViolet = "#6593c1", -- statements, keywords
          crystalBlue = "#6593c1", -- functions, titles
          waveAqua2 = "#ad7b6c", -- types
          springBlue = "#ad7b6c", -- specials, builtins
          waveRed = "#ad7b6c", -- standout specials 1 (builtins)
          peachRed = "#ad7b6c", -- standout specials 2 (exceptions, return)
          samuraiRed = "#ad7b6c", -- err
          autumnRed = "#ad7b6c", -- git delete
          autumnGreen = "#38a082", -- git add
          autumnYellow = "#c6bb95", -- git change
          roninYellow = "#c6bb95", -- warn
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
