return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false },
        },
      }
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  -- base16 dankcolors theme — loaded but not activated on startup.
  -- Activated dynamically when matugen rewrites this file via the file watcher.
  {
    'RRethy/base16-nvim',
    lazy = true,
  },
}
