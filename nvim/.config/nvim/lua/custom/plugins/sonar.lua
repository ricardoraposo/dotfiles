return {
  url = 'https://gitlab.com/schrieveslaach/sonarlint.nvim',
  ft = { 'javascript', 'typescript' },
  config = function()
    require('sonarlint').setup {
      server = {
        cmd = {
          'sonarlint-language-server',
          '-stdio',
          '-analyzers',
          vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarcfamily.jar',
          vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarjs.jar',
        },
      },
      filetypes = {
        'javascript',
        'typescript',
        'javascriptreact',
        'typescriptreact',
      },
    }
  end,
}
