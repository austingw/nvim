return {
  'mfussenegger/nvim-lint',
  config = function()
    require('lint').linters_by_ft = {
      css = { 'stylelint' },
      fish = { 'fish' },
      java = { 'checkstyle' },
      go = { 'golangci_lint' },
      lua = { 'luacheck' },
      markdown = { 'vale' },
      python = { 'pylint' },
      javascript = {
        'eslint_d',
      },
      typescript = {
        'eslint_d',
      },
      javascriptreact = {
        'eslint_d',
      },
      typescriptreact = {
        'eslint_d',
      },
    }
    --Run linter on save or when leaving insert mode
    vim.api.nvim_create_autocmd({ 'InsertLeave', 'BufWritePost' }, {
      callback = function()
        local lint_status, lint = pcall(require, 'lint')
        if lint_status then
          lint.try_lint()
        end
      end,
    })
  end,
}
