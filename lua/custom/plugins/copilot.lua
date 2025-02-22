return {
  {
    'github/copilot.vim',
    event = 'InsertEnter', -- Load Copilot when entering insert mode
    config = function()
      -- Ensure Copilot is enabled/disabled properly
      vim.g.copilot_enabled = true

      -- Set keybinding to toggle Copilot
      vim.keymap.set('n', '<leader>cp', function()
        if vim.g.copilot_enabled then
          vim.cmd 'Copilot disable'
          vim.g.copilot_enabled = false
          print 'Copilot is now disabled'
        else
          vim.cmd 'Copilot enable'
          vim.g.copilot_enabled = true
          print 'Copilot is now enabled'
        end
      end, { desc = 'Toggle Copilot' })
    end,
  },
}
