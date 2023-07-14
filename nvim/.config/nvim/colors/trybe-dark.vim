" Colorscheme generated by https://github.com/arcticlimer/djanho
highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color0 = '#FC605D'
let s:Color1 = '#32A791'
let s:Color2 = '#AF72CF'
let s:Color3 = '#06EA97'
let s:Color4 = '#97BAFF'
let s:Color5 = '#7EE1E7'
let s:Color6 = '#F9E499'
let s:Color7 = '#F0F2F5'
let s:Color8 = '#010E0F'
let s:Color9 = '#012222'
let s:Color10 = '#013b30'
let s:Color11 = '#4f3534'
let s:Color12 = '#035254'
let s:Color13 = '#011818'

call s:highlight('Error', '', s:Color0, '')
call s:highlight('Comment', '', s:Color1, '')
call s:highlight('Constant', '', s:Color2, '')
call s:highlight('Function', '', s:Color3, '')
call s:highlight('Keyword', '', s:Color4, '')
call s:highlight('Type', '', s:Color4, '')
call s:highlight('Statement', '', s:Color4, '')
call s:highlight('Type', '', s:Color5, 'italic')
call s:highlight('String', '', s:Color6, '')
call s:highlight('Identifier', '', s:Color7, '')
call s:highlight('StatusLine', s:Color7, s:Color8, '')
call s:highlight('WildMenu', s:Color9, s:Color7, '')
call s:highlight('Pmenu', s:Color9, s:Color7, '')
call s:highlight('PmenuSel', s:Color7, s:Color9, '')
call s:highlight('PmenuThumb', s:Color9, s:Color7, '')
call s:highlight('DiffAdd', s:Color10, '', '')
call s:highlight('DiffDelete', s:Color11, '', '')
call s:highlight('Normal', s:Color9, s:Color7, '')
call s:highlight('Visual', s:Color12, '', '')
call s:highlight('CursorLine', s:Color12, '', '')
call s:highlight('ColorColumn', s:Color12, '', '')
call s:highlight('SignColumn', s:Color9, '', '')
call s:highlight('LineNr', '', s:Color1, '')
call s:highlight('TabLine', s:Color13, s:Color1, '')
call s:highlight('TabLineSel', s:Color7, s:Color9, '')
call s:highlight('TabLineFill', s:Color13, s:Color1, '')
call s:highlight('TSPunctDelimiter', '', s:Color7, '')
call s:highlight('Title', '', s:Color7, '')
call s:highlight('PreProc', '', s:Color2, '')

highlight! link Conditional Operator
highlight! link Whitespace Comment
highlight! link TSOperator Operator
highlight! link Folded Comment
highlight! link TSType Type
highlight! link TSFloat Number
highlight! link TSNamespace TSType
highlight! link TSField Constant
highlight! link Macro Function
highlight! link TSFunction Function
highlight! link TSParameter Constant
highlight! link TSParameterReference TSParameter
highlight! link TSRepeat Repeat
highlight! link TSTag MyTag
highlight! link TSPunctBracket MyTag
highlight! link Repeat Conditional
highlight! link TSString String
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link TSConstant Constant
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TelescopeNormal Normal
highlight! link TSLabel Type
highlight! link NonText Comment
highlight! link TSComment Comment
highlight! link TSProperty TSField
highlight! link TSTagDelimiter Type
highlight! link TSNumber Number
highlight! link TSConditional Conditional
highlight! link Operator Keyword
highlight! link CursorLineNr Identifier
highlight! link TSKeyword Keyword
highlight! link TSFuncMacro Macro
