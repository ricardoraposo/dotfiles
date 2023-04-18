" Colorscheme generated by https://github.com/arcticlimer/djanho
highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color2 = '#b59f8b'
let s:Color5 = '#0a0a0b'
let s:Color4 = '#7f7f84'
let s:Color3 = '#5cbfdb'
let s:Color0 = '#546e7a'
let s:Color6 = '#dddddd'
let s:Color7 = '#18191C'
let s:Color1 = '#d8cfbd'

call s:highlight('Comment', '', s:Color0, 'italic')
call s:highlight('Identifier', '', s:Color1, '')
call s:highlight('Type', '', s:Color3, '')
call s:highlight('Statement', '', s:Color2, 'bold')
call s:highlight('PreProc', '', s:Color1, '')
call s:highlight('Error', '', s:Color1, '')
call s:highlight('Conditional', '', s:Color2, '')
call s:highlight('Variable', '', s:Color2, '')
call s:highlight('Constant', '', s:Color2, '')
call s:highlight('Repeat', '', s:Color2, '')
call s:highlight('Keyword', '', s:Color2, '')
call s:highlight('Exception', '', s:Color2, '')
call s:highlight('Include', '', s:Color3, '')
call s:highlight('Function', '', s:Color3, '')
call s:highlight('Number', '', s:Color4, '')
call s:highlight('TSCharacter', '', s:Color4, '')
call s:highlight('String', '', s:Color4, '')
call s:highlight('StatusLine', '', s:Color5, '')
call s:highlight('WildMenu', s:Color5, s:Color6, '')
call s:highlight('Pmenu', s:Color5, s:Color6, '')
call s:highlight('PmenuSel', s:Color6, s:Color5, '')
call s:highlight('PmenuThumb', s:Color5, s:Color6, '')
call s:highlight('Normal', s:Color5, s:Color6, '')
call s:highlight('Visual', s:Color7, '', '')
call s:highlight('CursorLine', s:Color7, '', '')
call s:highlight('ColorColumn', s:Color7, '', '')
call s:highlight('SignColumn', s:Color5, '', '')
call s:highlight('LineNr', '', s:Color4, '')
call s:highlight('TabLine', s:Color5, '', '')
call s:highlight('TabLineSel', s:Color4, s:Color5, '')
call s:highlight('TabLineFill', s:Color5, '', '')
call s:highlight('TSPunctDelimiter', '', s:Color6, '')

highlight! link TSComment Comment
highlight! link TSString String
highlight! link TSFloat Number
highlight! link TSLabel Type
highlight! link Repeat Conditional
highlight! link Special Conditional
highlight! link TSNumber Number
highlight! link TSConditional Conditional
highlight! link Whitespace Comment
highlight! link TSParameter Constant
highlight! link TSParameter Constant
highlight! link TSConstant Constant
highlight! link TSRepeat Repeat
highlight! link TSKeyword Keyword
highlight! link Operator Keyword
highlight! link TSPunctBracket MyTag
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TelescopeNormal Normal
highlight! link TSFunction Function
highlight! link Macro Function
highlight! link TSParameterReference TSParameter
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link Conditional Operator
highlight! link NonText Comment
highlight! link TSNamespace TSType
highlight! link TSTag MyTag
highlight! link TSTagDelimiter Type
highlight! link TSProperty TSField
highlight! link TSOperator Operator
highlight! link TSFuncMacro Macro
highlight! link TSType Type
highlight! link TSField Constant
highlight! link CursorLineNr Identifier
highlight! link Folded Comment