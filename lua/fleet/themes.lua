return {
  dark = function(colors)
    return {
      bg        = colors.grey1,
      bg_dark   = colors.grey2,
      bg_light1 = colors.grey3,
      bg_light2 = colors.grey4,
      bg_light3 = colors.grey5,

      bg_visual     = colors.blue, --selection
      bg_search     = colors.yellow,
      bg_search_inc = colors.blue2,

      fg      = colors.grey5,
      fg_dark = colors.grey6,

      co    = colors.prop,
      st    = colors.string,
      nu    = colors.functionCall,
      id    = colors.keyword,
      fn    = colors.functionDec,
      fc    = colors.functionCall,
      sm    = colors.keyword,
      kw    = colors.keyword,
      op    = colors.grey5,
      pp    = colors.prop,
      pr    = colors.varia,
      pw    = colors.prop,
      ty    = colors.varia,
      sp    = colors.grey5,
      var   = colors.varia,
      note  = colors.purple,
      sp2   = colors.waveRed,
      br    = colors.springViolet2,
      re    = colors.boatYellow2,
      dep   = colors.katanaGray,
      llr   = colors.red,
      llf   = colors.functionCall2,
      macro = colors.green5,

      diag = {
        error = colors.problem_error,
        warning = colors.problem_warning,
        info = colors.blue3,
        hint = colors.waveAqua1,
      },

      diff = {
        add = colors.green,
        delete = colors.red2,
        change = colors.blue4,
        text = colors.green,
      },

      git = {
        added = colors.green4,
        removed = colors.red3,
        changed = colors.blue5,
      }
    }
  end,
  light = function(colors)
    return {
      bg        = colors.white,
      bg_dark   = colors.grey7,
      bg_light1 = colors.fujiWhite,
      bg_light2 = colors.grey8,
      bg_light3 = colors.fujiWhite,

      bg_visual     = colors.blue6,
      bg_search     = colors.yellow2,
      bg_search_inc = colors.blue6,

      fg = colors.grey9,
      fg_dark = colors.grey6,

      co   = colors.grey9,
      st   = colors.stringl,
      nu   = colors.kaka,
      id   = colors.grey9,
      fn   = colors.grey9,
      fc   = colors.baka,
      sm   = colors.keyword2,
      kw   = colors.keyword2,
      op   = colors.boatYellow2,
      pp   = colors.prop2,
      pr   = colors.shaka,
      pw   = colors.waka,
      ty   = colors.shaka,
      sp   = colors.dragonBlue,
      var  = colors.grey9,
      note = colors.grey9,
      sp2  = colors.waveRed,
      br   = colors.springViolet2,
      re   = colors.boatYellow2,
      dep  = colors.katanaGray,
      -- llr  = colors.red,
      -- llf  = colors.functionCall2,

      diag = {
        error = colors.problem_error,
        warning = colors.problem_warning,
        info = colors.dragonBlue,
        hint = colors.waveAqua1,
      },

      diff = {
        add = colors.green3,
        delete = colors.red4,
        change = colors.blue7,
        text = colors.blue8,
      },

      git = {
        added = colors.autumnGreen,
        removed = colors.autumnRed,
        changed = colors.autumnYellow,
      }
    }
  end
}
