return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup()
  end,
  keys = {
    {
      '<leader>a',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon: Add File',
    },
    {
      '<leader>fh',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'Harpoon: Toggle Menu',
    },
  },
}
