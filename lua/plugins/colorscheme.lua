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

  {
    'RRethy/base16-nvim',
    priority = 1000,
    config = function()
      require('base16-colorscheme').setup {
        base00 = '#13140d',
        base01 = '#1b1c15',
        base02 = '#1f2018',
        base03 = '#83857b',
        base0B = '#ffea72',
        base04 = '#d5d7ca',
        base05 = '#fefff8',
        base06 = '#fefff8',
        base07 = '#fefff8',
        base08 = '#ffac9f',
        base09 = '#ffac9f',
        base0A = '#d6e196',
        base0C = '#f8ffd2',
        base0D = '#d6e196',
        base0E = '#f4ffb9',
        base0F = '#f4ffb9',
      }

      -- Live reload: watch this file for changes (e.g. from matugen theme updates)
      local current_file_path = vim.fn.stdpath('config') .. '/lua/plugins/colorscheme.lua'
      if not _G._matugen_theme_watcher then
        local uv = vim.uv or vim.loop
        _G._matugen_theme_watcher = uv.new_fs_event()
        _G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
          local new_spec = dofile(current_file_path)
          -- Find the base16-nvim entry and re-run its config
          for _, spec in ipairs(new_spec) do
            if type(spec) == 'table' and spec[1] == 'RRethy/base16-nvim' and spec.config then
              spec.config()
              print('Theme reload')
              break
            end
          end
        end))
      end
    end,
  },
}
