" This color scheme was derived from:
"
" Blueshift color scheme
" by Jan Zwiener, mail: jan@zwiener.org
" Based upon the pyte color scheme by Henning Hasemann
"
" 2010/11/16: Version 1.0
"

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "visualstudiodark"

" Taglist colors
hi MyTagListFileName    guifg=white   guibg=#c0d0e0
hi MyTagListTagName     guifg=white   guibg=#ffbc29

if version >= 700
  hi CursorLine   guibg=#333333                    gui=none
  hi CursorColumn guibg=red
  hi MatchParen   guifg=white     guibg=#bfbfbf
  hi ColorColumn                  guibg=#333333

  hi TabLine      guifg=white     guibg=#b0b8c0
  hi TabLineFill  guifg=#9098a0
  hi TabLineSel   guifg=white     guibg=#f0f0f0    gui=bold

  hi Pmenu        guifg=black     guibg=#808080
  hi PmenuSel     guifg=white     guibg=#ffbc29
endif

hi Title        guifg=#e0e0e0   gui=none
hi Underlined   guifg=#e0e0e0   gui=underline

hi Normal       guifg=white     guibg=#1e1e1e
hi ModeMsg      guifg=white     guibg=#1e1e1e
hi Cursor       guifg=#101010   guibg=#f0f0f0
hi LineNr       guifg=#0487A2   guibg=#2d2d2d   gui=none
hi Visual       guifg=black     guibg=#5381bc
hi WildMenu     guifg=#1e1e1e   guibg=#ffbc29
hi IncSearch    guibg=#1e1e1e   guifg=#ffbc29
hi Question     guifg=#1e1e1e   guibg=#ffbc29

hi StatusLine   guifg=black     guibg=white     gui=bold
hi StatusLineNC guifg=black     guibg=#8090a0   gui=bold
hi VertSplit    guifg=#a0b0c0   guibg=#a0b0c0   gui=none

hi NonText      guifg=#bebebe   guibg=#1e1e1e
hi Comment      guifg=#40A33C
hi Folded       guifg=#708090   guibg=#c0d0e0
hi Folded       guifg=#708090   guibg=#c0d0e0
hi FoldColumn   guifg=#708090   guibg=#c0d0e0

hi Constant     guifg=#B5CEA8   gui=none
hi Number       guifg=#B5CEA8
hi Float        guifg=#B5CEA8
hi Boolean      guifg=#B5CEA8   gui=none
hi String       guifg=#CE9178   gui=none

hi Statement    guifg=#4e8dc2   gui=none
hi StorageClass guifg=#31c9b0   gui=none
hi Type         guifg=#31c9b0   gui=none
hi Typedef      guifg=#4e8dc2   gui=none
hi Structure    guifg=#4e8dc2   gui=none
hi Identifier   guifg=#31c9b0   gui=none
hi Function     guifg=#31c9b0   gui=none
hi Repeat       guifg=#4e8dc2   gui=none
hi Conditional  guifg=#4e8dc2   gui=none
hi Operator     guifg=#4e8dc2   gui=none

hi PreProc      guifg=red       gui=none
hi Define       guifg=red       gui=none
hi Include      guifg=red       gui=none

hi Error        guifg=white     guibg=red	    gui=none
hi Todo         guifg=#4e8dc2   guibg=yellow    gui=none
hi Search       guifg=#1e1e1e   guibg=#ffbc29   gui=none
hi SpecialKey   guifg=#7C0A02   guibg=#1e1e1e
hi Special      guifg=#FF2373   guibg=#1e1e1e

" Diff
hi DiffChange   guifg=NONE      guibg=#384048   gui=bold
hi DiffText     guifg=NONE      guibg=#2B5B77   gui=bold
hi DiffAdd      guifg=NONE      guibg=#004225   gui=bold
hi DiffDelete   guifg=#7C0A02   guibg=#7C0A02   gui=bold
