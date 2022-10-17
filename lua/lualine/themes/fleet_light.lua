local colors = require('fleet.palette').setup()

return {
  normal = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.black3, fg = colors.white },
    c = { bg = colors.black2, fg = colors.white }
  },
  insert = {
    a = { bg = colors.purple, fg = colors.black, gui = 'bold' },
    b = { bg = colors.black3, fg = colors.white },
    c = { bg = colors.black2, fg = colors.white }
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.black3, fg = colors.white },
    c = { bg = colors.black2, fg = colors.white }
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.black3, fg = colors.white },
    c = { bg = colors.black2, fg = colors.white }
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.black3, fg = colors.white },
    c = { bg = colors.black2, fg = colors.white }
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.white, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.white },
    c = { bg = colors.inactivegray2, fg = colors.grey }
  }
}
