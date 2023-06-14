local M = {
  'akinsho/bufferline.nvim', 
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  version = "*", 
  dependencies = {
    {'nvim-tree/nvim-web-devicons'},
    {"famiu/bufdelete.nvim"},
  },
  opts = {
    options = {
      close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
      right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      hover = {
        enabled = true,
        delay = 100,
        reveal = {'close'}
      },
      buffer_close_icon = '󰅖 ',
      modified_icon = '●',
      close_icon = '',
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
      diagnostics_indicator = function(_, _, diag)
        local icons = {
          Error = " ",
          Warn = " ",
          Hint = " ",
          Info = " ",
        } 
        local ret = (diag.error and icons.Error .. diag.error .. " " or "")
          .. (diag.warning and icons.Warn .. diag.warning or "")
        return vim.trim(ret)
      end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}

return M
