local background = vim.opt.background:get()
local colors = require('fleet.palette').setup(background)

return {
  normal = {
    a = { bg = colors.pr, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_light1, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  insert = {
    a = { bg = colors.st, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_light1, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  visual = {
    a = { bg = colors.pw, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_light1, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  replace = {
    a = { bg = colors.llr, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_light1, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  command = {
    a = { bg = colors.llf, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg_light1, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg }
  },
  inactive = {
    a = { bg = colors.Grey_10, fg = colors.fg, gui = 'bold' },
    b = { bg = colors.Grey_10, fg = colors.fg },
    c = { bg = colors.Grey_10, fg = colors.fg }
  }
}
