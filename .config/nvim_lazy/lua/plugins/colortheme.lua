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
          fujiWhite = "#bebfb3", -- foreground
          carpYellow = "#2ca09b", -- identifiers
          fujiGray = "#4a6360", -- comments
          springGreen = "#b7958d", -- strings
          sakuraPink = "#b7958d", -- numbers
          waveAqua2 = "#b16666", -- types
          -- waveAqua2 = "#a08264", -- types
          oniViolet = "#a58cd0", -- statements, keywords
          crystalBlue = "#7691c5", -- functions, titlles
          springBlue = "#b16666", -- specials, builtins
          surimiOrange = "#d09d8b", -- const, import, bools
          springViolet2 = "#a58cd0", -- brackets, punctuation
          waveRed = "#a95757", -- standout specials 1 (builtins)
          peachRed = "#a95757", -- standout specials 2 (exceptions, return)
          samuraiRed = "#a95757", -- err
          autumnRed = "#a95757", -- git delete
          autumnGreen = "#6c938e", -- git add
          autumnYellow = "#be996d", -- git change
          roninYellow = "#be996d", -- warn
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
