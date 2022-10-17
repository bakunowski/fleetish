local background = vim.opt.background:get()
local colors = require('fleet.palette').setup(background)

return {
  normal = {
    a = { bg = colors.pr, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_dark, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  insert = {
    a = { bg = colors.string, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_dark, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  visual = {
    a = { bg = colors.waka, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_dark, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  replace = {
    a = { bg = colors.Red_80, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_dark, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  command = {
    a = { bg = colors.functionCall2, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_dark, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.fg, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.fg },
    c = { bg = colors.inactivegray2, fg = colors.grey }
  }
}
