return {
  {
    'alker0/chezmoi.vim',
    lazy = false,
    init = function()
      -- This option is required.
      vim.g['chezmoi#use_tmp_buffer'] = true
      -- add other options here if needed.
    end,
  },
  {
    'xvzc/chezmoi.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("chezmoi").setup {
        -- your configurations
        edit = {
          watch = false,
          force = false,
        },
        events = {
          on_open = {
            notification = {
              enable = true,
              msg = "Opened a chezmoi-managed file",
              opts = {},
            },
          },
          on_watch = {
            notification = {
              enable = true,
              msg = "This file will be automatically applied",
              opts = {},
            },
          },
          on_apply = {
            notification = {
              enable = true,
              msg = "Successfully applied",
              opts = {},
            },
          },
        },
        telescope = {
          select = { "<CR>" },
        },
      }
    end
  },

}
