local M = {}

function M.setup(palette)
  -- highlights are sorted like in highlight-groups help file
  local hlgroups = {
    ColorColumn  = { bg = palette.bg_dark },
    Conceal      = { fg = palette.bg_light3, bold = true },
    CurSearch    = { link = "IncSearch" },
    Cursor       = { fg = palette.bg, bg = palette.fg },
    lCursor      = { link = "Cursor" },
    CursorIM     = { link = "Cursor" },
    CursorColumn = { link = "CursorLine" },
    CursorLine   = { bg = palette.bg_light1 },
    Directory    = { fg = palette.fn },
    DiffAdd      = { bg = palette.diff.add },
    DiffChange   = { bg = palette.diff.change },
    DiffDelete   = { fg = palette.diff.delete, bg = palette.diff.delete },
    DiffText     = { bg = palette.diff.text },
    EndOfBuffer  = { fg = palette.bg },
    -- TermCursor = {},
    -- TermCursorNC = {},
    ErrorMsg     = { fg = palette.diag.error },
    VertSplit    = { fg = palette.bg_dark, bg = palette.bg },
    WinSeparator = { link = "VertSplit" },
    Folded       = { fg = palette.bg_light3, bg = palette.bg_dark },
    FoldColumn   = { fg = palette.bg_light2 },
    SignColumn   = { fg = palette.bg_light2 },
    IncSearch    = { fg = palette.fg, bg = palette.bg_search_inc },
    Substitute   = { fg = palette.fg, bg = palette.bg_search_inc },
    LineNr       = { fg = palette.bg_light2 },
    LineNrAbove  = { fg = palette.bg_light2 },
    LineNrBelow  = { fg = palette.bg_light2 },
    CursorLineNr = { fg = palette.diag.warning, bold = true },
    MatchParen   = { fg = palette.diag.warning, bg = palette.bg_light2, bold = true },
    ModeMsg      = { fg = palette.diag.warning, bold = true },
    MsgArea      = { fg = palette.bg_light3 },
    -- MsgSeparator = {},
    MoreMsg      = { fg = palette.diag.info, bg = palette.bg },
    NonText      = { fg = palette.bg_light2 },
    Normal       = { fg = palette.fg, bg = palette.bg },
    NormalFloat  = { fg = palette.fg, bg = palette.bg_dark },
    NormalNC     = { link = "Normal" },
    Pmenu        = { fg = palette.fg, bg = palette.bg_dark },
    PmenuSel     = { fg = palette.fg, bg = palette.bg_light1 },
    PmenuSbar    = { link = "Pmenu" },
    PmenuThumb   = { bg = palette.bg_search },
    Question     = { link = "MoreMsg" },
    QuickFixLine = { link = "CursorLine" },
    Search       = { fg = palette.fg, bg = palette.bg_search },
    SpecialKey   = { link = "NonText" },
    SpellBad     = { undercurl = true, sp = palette.diag.error },
    SpellCap     = { undercurl = true, sp = palette.diag.warning },
    SpellLocal   = { undercurl = true, sp = palette.diag.warning },
    SpellRare    = { undercurl = true, sp = palette.diag.warning },
    StatusLine   = { fg = palette.bg_light3, bg = palette.bg_dark },
    StatusLineNC = { fg = palette.fg_dark, bg = palette.bg },
    TabLine      = { bg = palette.bg_dark, fg = palette.bg_light3 },
    TabLineFill  = { bg = palette.bg },
    TabLineSel   = { fg = palette.fg, bg = palette.bg },
    Title        = { fg = palette.kw, bold = true },
    Visual       = { bg = palette.bg_visual },
    VisualNOS    = { link = "Visual" },
    WarningMsg   = { fg = palette.diag.warning },
    Whitespace   = { fg = palette.bg_light2 },
    WildMenu     = { link = "Pmenu" },
    WinBar       = {},
    WinBarNC     = {},
    FloatBorder  = { fg = palette.fg, bg = palette.bg_dark },

    -- diff

    -- Syntax
    Comment    = { fg = palette.fg_dark },
    Constant   = { fg = palette.co },
    String     = { fg = palette.st },
    Character  = { link = "String" },
    Number     = { fg = palette.nu },
    Boolean    = { fg = palette.co, bold = true },
    Float      = { link = "Number" },
    Identifier = { fg = palette.id },
    Function   = { fg = palette.fn, bold = true },
    Method     = { link = "Function" },
    Statement  = { fg = palette.sm },
    -- Conditional = {},
    -- Repeat = {},
    Label      = { link = 'Statement' }, --TODO: check default
    Operator   = { fg = palette.op },
    Keyword    = { fg = palette.kw },
    Exception  = { fg = palette.sp2 },
    PreProc    = { fg = palette.sm },
    -- Include = {},
    -- Define = {},
    -- Macro = {},
    -- PreCondit = {},
    Type       = { fg = palette.ty },
    Struct     = { link = "Type" },
    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},
    Special    = { fg = palette.sp },
    -- SpecialChar = {},
    -- Tag = {},
    Delimiter  = { fg = palette.fg },
    -- SpecialComment = {},
    -- Debug = {},

    Underlined = { fg = palette.sp, underline = true },
    Bold       = { bold = true },
    Italic     = { italic = true },
    Ignore     = { link = "NonText" },
    Error      = { fg = palette.diag.error },
    Todo       = { fg = palette.diag.info, bg = palette.bg, bold = true },

    -- Treesitter
    ['@parameter'] = { fg = palette.fg },
    ['@string.escape'] = { fg = palette.sx },
    -- TSParameterReference = {},
    ['@variable'] = { fg = palette.var },
    ['@namespace'] = { fg = palette.pr },
    ['@function.macro'] = { fg = palette.macro },
    -- TSAnnotation = {},
    TSAttribute = { link = "Constant" },
    -- TSBoolean = {},
    -- TSCharacter = {},
    -- TSComment = {},
    TSNote = { fg = palette.note, bg = palette.bg, bold = true },
    TSWarning = { link = "Todo" }, --default
    TSDanger = { link = "WarningMsg" }, --default
    TSConstructor = { fg = palette.kw }, -- Function/Special/Statement/Keyword
    -- TSConditional = {},
    -- TSConstant = {},
    -- TSConstBuiltin = {},
    -- TSConstMacro = {},
    -- TSError = { fg = palette.diag.error },
    -- TSException = { link = 'Exception' }, -- default, -> statement
    -- TSException = vim.tbl_extend("force", { fg = config.specialException and palette.sp3 or palette.sm },
    -- config.statementStyle),
    TSField = { fg = palette.pw }, -- default
    -- TSFloat = {},
    -- TSFunction = {},
    TSFunctionCall = { fg = palette.fc },
    TSFuncBuiltin = { link = "Function" },
    -- TSInclude = {},
    TSKeyword = { link = "Keyword" },
    -- TSKeywordFunction = { link = "Keyword" }, -- default
    -- TSKeywordFunction = { link = "Function" },
    -- TSKeywordReturn = vim.tbl_extend("force", { fg = config.specialReturn and palette.sp3 or palette.kw },
    -- config.keywordStyle),
    TSLabel = { link = "Label" },
    TSMethod = { link = "Function" },
    TSMethodCall = { link = "TSFunctionCall" },
    -- TSNamespace = {},
    -- TSNone = {},
    -- TSNumber = {},
    -- TSOperator = { link = "Operator" },
    TSKeywordOperator = { fg = palette.op, bold = true },
    TSProperty = { fg = palette.pp }, -- default
    -- TSPunctDelimiter = { fg = c.op },
    TSPunctDelimiter = { fg = palette.br },
    TSPunctBracket = { fg = palette.br },
    TSPunctSpecial = { fg = palette.br },
    -- TSRepeat = {},
    -- TSString = {},
    TSStringRegex = { fg = palette.re },
    TSStringEscape = { fg = palette.re, bold = true },
    -- TSSymbol = {},
    -- TSType = {},
    -- TSTypeBuiltin = {},
    TSVariable = { fg = palette.var },
    -- TSVariableBuiltin = vim.tbl_extend("force", { fg = palette.sp2 }, config.variablebuiltinStyle),
    -- TSTag = {},
    -- TSTagDelimiter = {},
    -- TSText = {},
    -- TSTextReference = { fg = c.sp2 },
    -- TSEmphasis = {},
    -- TSUnderline = {},
    -- TSStrike = {},
    -- TSTitle = {},
    -- TSLiteral = {},
    -- TSURI = {},


    -- yaml specific
    ['@field.yaml'] = { fg = palette.pr },
    ['@punctuation.yaml'] = { fg = palette.sm },
    ['@punctuation.bracket.yaml'] = { fg = palette.sm },
    -- rust specific
    ['@constant.rust'] = { fg = palette.fg },
    ['@constant.builtin.rust'] = { fg = palette.fc },
    ['@namespace.rust'] = { fg = palette.fg },

    -- syntax files
    qfLineNr = { link = "lineNr" },
    qfFileName = { link = "Directory" },

    mkdHeading = { fg = palette.kw },
    mkdLink = { fg = palette.st },

    markdownHeadingDelimiter = { fg = palette.kw },
    markdownCode = { fg = palette.st },
    markdownCodeBlock = { fg = palette.st },
    markdownEscape = { fg = "NONE" },
    markdownLink = { fg = palette.st },
    markdownUrl = { fg = palette.st, italic = true, underline = true },

    yamlBlockMappingKey = { fg = palette.varia },

    debugPC = { bg = palette.diff.delete },
    debugBreakpoint = { fg = palette.sp },

    LspReferenceText = { bg = palette.diff.text },
    LspReferenceRead = { link = "LspReferenceText" },
    LspReferenceWrite = { link = "LspReferenceText" },

    DiagnosticError = { fg = palette.diag.error },
    DiagnosticWarn = { fg = palette.diag.warning },
    DiagnosticInfo = { fg = palette.diag.info },
    DiagnosticHint = { fg = palette.diag.hint },

    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },

    DiagnosticVirtualTextError = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

    DiagnosticUnderlineError = { undercurl = true, sp = palette.diag.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = palette.diag.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = palette.diag.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = palette.diag.hint },

    LspSignatureActiveParameter = { fg = palette.diag.warning },
    LspCodeLens = { fg = palette.fg_dark },

    -- Git (piping git diff through vim)
    diffAdded = { fg = palette.git.added },
    diffRemoved = { fg = palette.git.removed },
    diffDeleted = { fg = palette.git.removed },
    diffChanged = { fg = palette.git.changed },
    diffOldFile = { fg = palette.git.removed },
    diffNewFile = { fg = palette.git.added },
    -- diffFile = { fg = c.steelGray },
    -- diffLine = { fg = c.steelGray },
    -- diffIndexLine = { link = 'Identifier' },

    -- GitSigns
    GitSignsAdd = { link = "diffAdded" },
    GitSignsChange = { link = "diffChanged" },
    GitSignsDelete = { link = "diffDeleted" },
    GitSignsDeleteLn = { bg = palette.diff.delete },

    TelescopeBorder = { fg = palette.fg, bg = palette.bg },
    TelescopeResultsClass = { link = "TSType" },
    TelescopeResultsStruct = { link = "TSType" },
    TelescopeResultsVariable = { link = "TSVariable" },

    -- NvimTree                       = {},
    NvimTreeNormal = { link = "Normal" },
    NvimTreeNormalNC = { link = "NormalNC" },
    NvimTreeRootFolder = { fg = palette.id, bold = true },
    NvimTreeGitDirty = { fg = palette.git.changed },
    NvimTreeGitNew = { fg = palette.git.added },
    NvimTreeGitDeleted = { fg = palette.git.removed },
    NvimTreeSpecialFile = { fg = palette.sp },
    -- NvimTreeIndentMarker           = {},
    NvimTreeImageFile = { fg = palette.sp2 },
    NvimTreeSymlink = { link = "Type" },
    NvimTreeFolderName = { link = "Directory" },
    NvimTreeExecFile = { fg = palette.springGreen, bold = true },
    NvimTreeGitStaged = { fg = palette.git.added },
    NvimTreeOpenedFile = { fg = palette.sp, italic = true },

    -- NeoVim                         = {},
    healthError = { fg = palette.diag.error },
    healthSuccess = { fg = palette.springGreen },
    healthWarning = { fg = palette.diag.warning },

    -- Cmp
    CmpDocumentation = { link = "NormalFloat" },
    CmpDocumentationBorder = { link = "FloatBorder" },
    CmpCompletion = { link = "Pmenu" },
    CmpCompletionSel = { link = "PmenuSel" },
    CmpCompletionBorder = { fg = palette.bg_search, bg = palette.bg_dark },
    CmpCompletionThumb = { link = "PmenuThumb" },
    CmpCompletionSbar = { link = "PmenuSbar" },

    CmpItemAbbr = { fg = palette.fg },
    CmpItemAbbrDeprecated = { fg = palette.fg_dark, strikethrough = true },

    CmpItemAbbrMatch = { fg = palette.fn },
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

    CmpItemKindDefault = { fg = palette.dep },
    CmpItemMenu = { fg = palette.fg_dark },

    CmpItemKindVariable = { fg = palette.bg_light3 },

    CmpItemKindFunction = { link = "Function" },
    CmpItemKindMethod = { link = "Function" },

    CmpItemKindConstructor = { link = "TSConstructor" },

    CmpItemKindClass = { link = "Type" },
    CmpItemKindInterface = { link = "Type" },
    CmpItemKindStruct = { link = "Type" },

    CmpItemKindProperty = { link = "TSProperty" },
    CmpItemKindField = { link = "TSField" },
    CmpItemKindEnum = { link = "Identifier" },

    CmpItemKindSnippet = { fg = palette.sp },

    CmpItemKindText = { link = "TSText" },

    CmpItemKindModule = { link = "TSInclude" },

    CmpItemKindFile = { link = "Directory" },
    CmpItemKindFolder = { link = "Directory" },

    CmpItemKindKeyword = { link = "TSKeyword" },
    CmpItemKindTypeParameter = { link = "Identifier" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindReference = { link = "TSParameterReference" },
    CmpItemKindEnumMember = { link = "TSField" },

    CmpItemKindValue = { link = "String" },
    -- CmpItemKindUnit = {},
    -- CmpItemKindEvent = {},
    -- CmpItemKindColor = {},

    -- IndentBlankline
    IndentBlanklineChar = { fg = palette.bg_light2 },
    IndentBlanklineSpaceChar = { fg = palette.bg_light2 },
    IndentBlanklineSpaceCharBlankline = { fg = palette.bg_light2 },
    IndentBlanklineContextChar = { fg = palette.bg_light3 },
    IndentBlanklineContextStart = { sp = palette.bg_light3, underline = true },
  }

  return hlgroups
end

return M