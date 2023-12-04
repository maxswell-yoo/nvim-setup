-- Para nvim-web-devicons
require'nvim-web-devicons'.get_icons()
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

require("ibl").setup()
require('lualine').setup({
  options = {
    globalstatus = true,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {
      'mode',
    },
    lualine_b = {
      'branch',
      'diff',
      '"LSP: " .. tostring(#vim.tbl_keys(vim.lsp.buf_get_clients()))',
      { 'diagnostics', sources = { 'nvim_diagnostic' } },
    },
    lualine_c = {
      'filename'
    },
    lualine_x = {
      'filetype',
      'encoding',
      'fileformat',
    },
    lualine_z = {
      'location',
      'progress',
    },
  },
})

