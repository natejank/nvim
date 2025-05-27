-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--

local function cwd_name()
  return vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
end

return {
  {
    'BartSte/nvim-project-marks',
    lazy = false,
    config = function()
      require('projectmarks').setup {
        shadafile = '~/.cache/shadas/' .. cwd_name() .. '.shada',
        message = '',
      }
    end,
  },
}
