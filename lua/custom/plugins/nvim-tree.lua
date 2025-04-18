return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 35,
      },
      -- This is the key part - disable automatic opening
      tab = {
        sync = {
          open = false,
          close = false,
        },
      },
      -- Important to prevent auto-opening when opening directories
      hijack_directories = {
        enable = false,
      },
      -- Leave netrw enabled
      disable_netrw = false,
      hijack_netrw = false,
    }

    -- Keymap to toggle the tree
    vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}
