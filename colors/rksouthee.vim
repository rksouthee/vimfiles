set background=light
hi clear
hi Normal guifg=Black guibg=White
if exists("syntax_on")
	syntax reset
endif

let colors_name="rksouthee"

hi CursorLine cterm=NONE guibg=Grey90

hi MatchParen guibg=Turquoise

hi ErrorMsg guifg=Firebrick guibg=NONE
hi! link WarningMsg ErrorMsg
hi Question gui=NONE guifg=SeaGreen
hi! link MoreMsg Question
hi ModeMsg gui=NONE guifg=Purple
hi Title gui=NONE guifg=VioletRed3

hi DiffChange guibg=#dddbff
hi DiffText gui=NONE guibg=#aca8fe
hi DiffDelete gui=NONE guifg=Black guibg=#ffdddd
hi DiffAdd guibg=#ddffdd

hi StatusLine cterm=underline gui=underline guifg=Black guibg=Grey75
hi StatusLineNC cterm=underline gui=underline guifg=Grey30 guibg=Grey85
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi VertSplit cterm=NONE gui=NONE guifg=Black guibg=Grey85

hi Visual guibg=LightBlue
hi WildMenu cterm=underline gui=underline guibg=LightGoldenrod
hi QuickFixLine guibg=LightGoldenrod
hi Search guibg=LightGoldenrod
hi IncSearch cterm=NONE gui=NONE guifg=Black guibg=Goldenrod
hi LineNr guifg=DarkCyan

hi Pmenu guibg=#dddbff
hi PmenuSel guibg=#aca8fe
hi PmenuSbar guibg=#f5f5ff
hi PmenuThumb guibg=#958fff

hi Comment guifg=Blue
hi Constant guifg=VioletRed3
hi Identifier guifg=DarkCyan
hi Statement gui=NONE guifg=Purple
hi PreProc guifg=DarkSlateBlue
hi Type gui=NONE guifg=SeaGreen

hi Special guifg=SlateBlue
hi Underlined gui=underline guifg=SlateBlue
hi Ignore guifg=bg
hi Error cterm=underline gui=underline guifg=Firebrick guibg=Grey80
hi Todo guifg=Blue guibg=LightGoldenrod

" hi texBoldItalStyle gui=NONE
" hi texBoldStyle gui=NONE
" hi texItalBoldStyle gui=NONE
" hi texItalStyle gui=NONE

" hi markdownBoldItalic gui=NONE
" hi markdownBold gui=NONE
" hi markdownItalic gui=NONE
