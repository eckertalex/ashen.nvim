local M = {}

---@alias HighlightSpec [HexCode|ColorName?, HexCode|ColorName?, Style?] # Defines a highlight group.

---@alias Style table<string, boolean|string|integer> # Defines the text style of an AshenHighlight.

---@alias HighlightName string # The name of a Neovim highlight group.
---@alias HighlightMap table<HighlightName, HighlightSpec>

---@alias HighlightLink table<HighlightName, HighlightName> # Links first group to second group

---@type HighlightMap
M.map = {
  AshenRedFlame = { "red_flame" },
  AshenRedGlowing = { "red_glowing" },
  AshenRedEmber = { "red_ember" },
  AshenOrangeGlow = { "orange_glow" },
  AshenOrangeBlaze = { "orange_blaze" },
  AshenOrangeSmolder = { "orange_smolder" },
  AshenOrangeGolden = { "orange_golden" },
  AshenBlue = { "blue" },
  AshenBlueDark = { "blue_dark" },
  AshenGreenLight = { "green_light" },
  AshenGreen = { "green" },
  AshenBackground = { "background" },
  AshenG1 = { "g_1" },
  AshenG2 = { "g_2" },
  AshenG3 = { "g_3" },
  AshenG4 = { "g_4" },
  AshenG5 = { "g_5" },
  AshenG6 = { "g_6" },
  AshenG7 = { "g_7" },
  AshenG8 = { "g_8" },
  AshenG9 = { "g_9" },
  AshenG10 = { "g_10" },
  AshenG11 = { "g_11" },
  AshenG12 = { "g_12" },
  Title = { "red_ember", nil, { bold = true } },
  Normal = { "g_3", "background" },
  ModeMsg = { "g_4" },
  CurSearch = { "background", "orange_glow", { bold = true } },
  IncSearch = { "background", "g_5", { bold = true } },
  Search = { "background", "g_5", { bold = true } },
  Substitute = { nil, "g_8" },
  Visual = { nil, "g_8" },
  AshenYank = { nil, "g_7" },
  SignColumn = { nil, "background" },
  LineNr = { "g_8", "background" },
  EndOfBuffer = { "g_8", nil },
  Character = { "g_5", nil },
  Identifier = { "g_1", nil },
  Statement = { "g_1", nil },
  PreProc = { "red_ember", nil },
  Type = { "orange_blaze", nil },
  Special = { "g_5", nil },
  Error = { "red_flame", nil },
  Todo = { "red_ember", "g_8" },
  Function = { "g_1", nil },
  ColorColumn = { nil, "g_8" },
  Conceal = { "g_7", nil },
  Cursor = { "g_12", "g_3" },
  CursorColumn = { nil, "g_9" },
  CursorLine = { nil, "g_9" },
  CursorLineNr = { "g_6", "g_9" },
  Directory = { "g_3", nil },
  DiffAdd = { "g_4", "g_8" },
  DiffChange = { "orange_smolder", "g_6" },
  DiffDelete = { "red_ember", "g_8" },
  DiffText = { "g_1", "g_7" },
  VertSplit = { "g_8", "g_9" },
  WinSeparator = { "g_8", "g_9" },
  Folded = { "g_5", "g_8" },
  FoldColumn = { "g_7", nil },
  MatchParen = { nil, "g_7" },
  MoreMsg = { nil, "g_6" },
  Pmenu = { "g_2", "g_8" },
  PmenuSel = { "g_1", "g_7" },
  PmenuSbar = { nil, "g_8" },
  PmenuThumb = { nil, "g_7" },
  Question = { "g_1", "g_8" },
  SpecialKey = { "g_6", nil },
  SpellLocal = { "g_5", nil },
  SpellRare = { "red_ember", nil },
  StatusLine = { "g_5", "g_8" },
  TabLine = { "g_3", "g_8" },
  TabLineFill = { nil, "g_8" },
  TabLineSel = { "g_2", nil },
  VisualNOS = { "red_ember", "g_8" },
  WarningMsg = { "orange_golden", nil },
  WildMenu = { "g_5", "g_8" },
  FloatBorder = { "g_7", nil },
  FloatTitle = { "g_1", nil },
  NormalFloat = { "g_3", nil },
  -- TODO: Create `noice` plugin table instead?
  NoicePopup = { "g_3", "g_11" },
  ["@character"] = { "red_glowing", nil },
  ["@character.special"] = { "red_kindling" },
  ["@conditional"] = { "g_2", nil },
  ["@constant.macro"] = { "red_ember", nil },
  ["@constructor"] = { "g_1", nil },
  ["@debug"] = { "g_2", nil },
  ["@define"] = { "g_2", nil },
  ["@exception"] = { "g_2", nil },
  ["@field"] = { "g_2", nil },
  ["@float"] = { "g_2", nil },
  ["@function"] = { "g_1", nil },
  ["@function.builtin"] = { "g_1", nil },
  ["@function.call"] = { "g_1", nil },
  ["@function.macro"] = { "red_ember", nil },
  ["@include"] = { "red_ember", nil },
  ["@keyword"] = { "red_ember", nil },
  ["@keyword.function"] = { "red_ember", nil },
  ["@keyword.operator"] = { "orange_blaze", nil },
  ["@label"] = { "red_ember", nil },
  ["@macro"] = { "red_ember", nil },
  ["@method"] = { "g_1", nil },
  ["@method.call"] = { "g_1", nil },
  ["@namespace"] = { "orange_blaze", nil },
  ["@namespace.builtin"] = { "orange_blaze" },
  ["@none"] = { "g_3", nil },
  ["@operator"] = { "orange_glow", nil },
  ["@parameter"] = { "g_2", nil },
  ["@preproc"] = { "g_2", nil },
  ["@property"] = { "g_2", nil },
  ["@punctuation"] = { "g_2", nil },
  ["@punctuation.bracket"] = { "g_6", nil },
  ["@punctuation.delimiter"] = { "orange_smolder", nil },
  ["@punctuation.special"] = { "orange_golden", nil },
  ["@repeat"] = { "g_2", nil },
  ["@storageclass"] = { "g_2", nil },
  ["@string"] = { "red_glowing", nil },
  ["@string.escape"] = { "g_2", nil },
  ["@string.special"] = { "g_2", nil },
  ["@structure"] = { "g_2", nil },
  ["@tag"] = { "g_5", nil },
  ["@diff.plus"] = { "g_4", nil },
  ["@diff.minus"] = { "red_ember", nil },
  ["@diff.delta"] = { "orange_smolder", nil },
  ["@tag.attribute"] = { "g_4", nil },
  ["@tag.delimiter"] = { "g_3", nil },
  ["@text.literal"] = { "red_kindling", nil },
  ["@text.reference"] = { "red_kindling", nil },
  ["@text.title"] = { "g_2", nil },
  ["@text.todo"] = { "g_2", nil },
  ["@text.underline"] = { "g_2", nil },
  ["@text.uri"] = { "g_2", nil },
  ["@type"] = { "g_2", nil },
  ["@identifier"] = { "g_1", nil },
  ["@variable.builtin"] = { "blue", nil },
  ["@type.definition"] = { "g_2", nil },
  ["@lsp.type.function"] = { "g_1", nil },
  ["@lsp.type.macro"] = { "red_ember", nil },
  ["@lsp.type.method"] = { "g_1", nil },
  DiagnosticSignError = { "red_flame", nil },
  DiagnosticError = { "red_flame", nil },
  DiagnosticSignWarn = { "orange_golden", nil },
  DiagnosticWarn = { "orange_golden", nil },
  DiagnosticSignInfo = { "g_2", nil },
  DiagnosticSignHint = { "g_4", nil },
  DiagnosticHint = { "g_4" },
  DiagnosticInfo = { "g_2" },
  DiagnosticUnderlineError = { nil, nil, { underdotted = true, sp = "red_flame" } },
  DiagnosticUnderlineWarn = { nil, nil, { underdotted = true, sp = "orange_golden" } },
  DiagnosticUnderlineOk = { nil, nil, { underdotted = true, sp = "green" } },
  DiagnosticUnderlineInfo = { nil, nil, { underdotted = true, sp = "blue" } },
  DiagnosticUnderlineHint = { nil, nil, { underdotted = true, sp = "g_3" } },

  DiagnosticOk = { "g_2", nil },
  Added = { "g_4", nil },
  Removed = { "red_ember", nil },
  Changed = { "orange_smolder", nil },
  ["@variable"] = { "g_3", nil },
  ["@variable.member"] = { "g_2", nil },
  ["@constant"] = { "orange_blaze", nil },
  ["@constant.builtin"] = { "blue", nil },
  ["@type.builtin"] = { "blue", nil },
  ["@number"] = { "blue", nil },
  NonText = { "g_7", nil },
  Comment = { "g_6", nil },
  ["@comment"] = { "g_6", nil },
  ["@boolean.go"] = { "blue", nil },
  ["@boolean"] = { "blue", nil },
  ["@keyword.return"] = { "red_ember", nil },
  Boolean = { "blue", nil },
  Constant = { "orange_blaze", nil },
  DashboardHeader = { "red_ember", nil },
  DashboardIcon = { "red_ember", nil },
  DashboardKey = { "blue", nil },
  NotifyINFOBorder = { "blue_dark", nil },
  NotifyINFOTitle = { "blue", nil },
  NotifyINFOIcon = { "blue", nil },
  NotifyWARNBorder = { "orange_glow", nil },
  NotifyWARNTitle = { "orange_golden", nil },
  NotifyWARNIcon = { "orange_golden", nil },
  NotifyERRORBorder = { "red_flame", nil },
  NotifyERRORTitle = { "red_flame", nil },
  NotifyERRORIcon = { "red_flame", nil },
  ErrorMsg = { "g_1", "red_flame" },
  SpellBad = { nil, nil, { undercurl = true } },
  SpellCap = { nil, nil, { undercurl = true } },
  String = { "red_glowing", nil },
  LazySpecial = { "red_ember" },
}

M.link = {}

---@type string[]
M.transparent_bg = {
  "Normal",
  "SignColumn",
  "LineNr",
}

M.load = function()
  local util = require("ashen.util")
  local opts = require("ashen.state").opts
  vim.api.nvim_command(string.format("set background=%s", "dark"))
  if opts.transparent then
    for _, name in ipairs(M.transparent_bg) do
      M.map[name] = util.remove_bg(M.map[name])
    end
  end
  util.map_override(M.map, opts)

  -- set theme highlights
  for name, spec in pairs(M.map) do
    util.hl(name, spec)
  end
  -- set theme links
  for from, to in pairs(M.link) do
    util.link(from, to)
  end
  -- set user links
  for from, to in pairs(opts.hl.link) do
    util.link(from, to, true)
  end
end

return M
