" AUTHOR: Ari Archer <ari@mail.ari-web.xyz>
" SCRIPT: https://github.com/coffee-theme/coffee.vim

" SUPPORT:
" 256 color terminals, Gui versions of vim, and Termguicolors versions of vim
"
" INSTALL LOCATION:
" Unix users, place coffee.vim in ~/.vim/colors
" Windows users, place coffee.vim in ~\vimfiles\colors

" From your .vimrc add one of the following options
" colorscheme coffee


"""
" Setup
"""


set t_Co=256
set background=dark

highlight clear
if exists("syntax_on")
syntax reset
endif

let g:colors_name="coffee"


"""
" Lightline support
"""


let s:black = [ '#262220', '235' ]
let s:red = [ '#af5f5f', '131' ]
let s:white = [ '#ddd0c0', '187' ]
let s:yellow = [ '#e4995c', '173' ]
let s:grey1 = [ '#6c6c6c', '242' ]
let s:grey2 = [ '#585858', '240' ]
let s:grey3 = [ '#303030', '236' ]
let s:grey4 = [ '#3a3a3a', '237' ]
let s:green = [ '#87af87', '108' ]
let s:babyblue = [ '#87afaf', '109' ]
let s:darkblue = [ '#666c7f', '60 ' ]

let s:__0 = s:black
let s:__1 = s:red
let s:__2 = s:white
let s:__3 = s:__2
let s:__4 = s:__2
let s:__5 = s:__2
let s:__6 = s:grey1
let s:__7 = s:grey1
let s:__8 = s:grey2
let s:__9 = s:babyblue
let s:_10 = s:green
let s:_11 = s:yellow
let s:_12 = s:babyblue
let s:_13 = s:darkblue
let s:_14 = s:darkblue
let s:_15 = s:__2
let s:_bg = s:black
let s:_fg = s:__2
let s:bg2 = s:grey3
let s:bg3 = s:grey4

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

func! s:fg_bg(fg, bg)
return [ a:fg[0], a:bg[0], a:fg[1], a:bg[1] ]
endfunc

let s:p.inactive.left = [ s:fg_bg( s:_bg, s:__8 ) ]
let s:p.inactive.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:p.inactive.right = [ s:fg_bg( s:_bg, s:__8 ) ]
let s:p.insert.left = [ s:fg_bg( s:_bg, s:_10 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.insert.middle = s:p.inactive.middle
let s:p.insert.right = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.error = [ s:fg_bg( s:__0, s:__1 ) ]
let s:p.normal.left = [ s:fg_bg( s:_bg, s:__2 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.middle = s:p.inactive.middle
let s:p.normal.right = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.warning = [ s:fg_bg( s:__0, s:_11 ) ]
let s:p.replace.left = [ s:fg_bg( s:_bg, s:__1 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.replace.middle = s:p.inactive.middle
let s:p.replace.right = [ s:fg_bg( s:_bg, s:__1 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.tabline.left = [ s:fg_bg( s:_bg, s:__8 ) ]
let s:p.tabline.middle = s:p.inactive.middle
let s:p.tabline.right = [ s:fg_bg( s:_bg, s:__8 ) ]
let s:p.tabline.tabsel = [ s:fg_bg( s:_bg, s:__3 ) ]
let s:p.visual.left = [ s:fg_bg( s:_bg, s:__9 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.visual.right = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]

let g:lightline#colorscheme#coffee#palette = s:p


"""
" Colour scheme
"""


" Common colors and settings
highlight PreProc ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight Function ctermfg=223 guifg=#fdd0c0 ctermbg=NONE cterm=NONE gui=NONE
highlight Identifier ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=NONE gui=NONE
highlight Statement ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight Constant ctermfg=138 guifg=#af8787 ctermbg=NONE cterm=NONE gui=NONE
highlight Type ctermfg=137 guifg=#af875f ctermbg=NONE cterm=NONE gui=NONE
highlight Label ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight Special ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Operator ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight Title ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight Conditional ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight StorageClass ctermfg=95 guifg=#875f5f ctermbg=NONE cterm=NONE gui=NONE
highlight htmlStatement ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight htmlItalic ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight htmlArg ctermfg=95 guifg=#875f5f ctermbg=NONE cterm=NONE gui=NONE
highlight cssIdentifier ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight cssClassName ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight Structure ctermfg=95 guifg=#875f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Typedef ctermfg=95 guifg=#875f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Repeat ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight Keyword ctermfg=73 guifg=#57afaf ctermbg=NONE cterm=NONE gui=NONE
highlight Exception ctermfg=102 guifg=#878787 ctermbg=NONE cterm=NONE gui=NONE
highlight Number ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=NONE gui=NONE
highlight Character ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=NONE gui=NONE
highlight Boolean ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=NONE gui=NONE
highlight Float ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=NONE gui=NONE
highlight Include ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight Define ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight Comment ctermfg=242 guifg=#6c7468 ctermbg=NONE cterm=NONE gui=NONE

" VimScript syntax
highlight link vimAutoCmdSfxList Type
highlight link vimAutoEventList Identifier
highlight link vimCmdSep Special
highlight link vimCommentTitle SpecialComment
highlight link vimFunction Function
highlight link vimUserFunc Function

" Window UI
highlight MoreMsg ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight SpecialComment ctermfg=247 guifg=#8f9f9f ctermbg=NONE cterm=reverse gui=reverse
highlight Underlined ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Todo ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=reverse gui=reverse
highlight Visual ctermfg=187 guifg=#ddd0c0 ctermbg=246 guibg=#8f9494 cterm=NONE gui=NONE
highlight Question ctermfg=95 guifg=#875f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Search ctermfg=187 guifg=#ddd0c0 ctermbg=NONE cterm=NONE gui=NONE
highlight PmenuSel ctermfg=187 guifg=#ddd0c0 ctermbg=NONE cterm=NONE gui=NONE
highlight MatchParen ctermfg=187 guifg=#ddd0c0 ctermbg=235 guibg=#2b232f cterm=NONE gui=NONE

highlight Error ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=reverse gui=reverse
highlight ErrorMsg ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=NONE gui=NONE
highlight WarningMsg ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Directory ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=NONE gui=NONE
highlight Cursor ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE

highlight WildMenu ctermfg=187 guifg=#ddd0c0 ctermbg=NONE cterm=NONE gui=NONE
highlight ModeMsg ctermfg=187 guifg=#ddd0c0 ctermbg=NONE cterm=NONE gui=NONE
highlight Macro ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight PreCondit ctermfg=180 guifg=#dfaf87 ctermbg=NONE cterm=NONE gui=NONE
highlight IncSearch ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=reverse gui=reverse
highlight VisualNOS ctermfg=NONE ctermbg=NONE cterm=underline gui=underline

highlight CursorLineNR ctermfg=246 guifg=#8f9494 ctermbg=NONE cterm=NONE gui=NONE
highlight StatusLine ctermfg=246 guifg=#8f9494 ctermbg=NONE cterm=NONE gui=NONE
highlight StatusLineNC ctermfg=242 guifg=#6c6c6c ctermbg=NONE cterm=NONE gui=NONE
highlight StatusLineTerm ctermfg=246 guifg=#8f9494 ctermbg=NONE cterm=NONE gui=NONE
highlight StatusLineTermNC ctermfg=242 guifg=#6c6c6c ctermbg=NONE cterm=NONE gui=NONE

highlight Pmenu ctermfg=246 guifg=#8f9494 ctermbg=NONE cterm=NONE gui=NONE
highlight PmenuSbar ctermfg=235 guifg=#262220 ctermbg=NONE cterm=NONE gui=NONE
highlight PmenuThumb ctermfg=235 guifg=#262220 ctermbg=NONE cterm=NONE gui=NONE
highlight TabLineSel ctermfg=246 guifg=#8f9494 ctermbg=NONE cterm=NONE gui=NONE
highlight TabLine ctermfg=242 guifg=#6c6c6c ctermbg=NONE cterm=NONE gui=NONE
highlight TabLineFill ctermfg=242 guifg=#6c6c6c ctermbg=NONE cterm=NONE gui=NONE

highlight CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE

highlight CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE
highlight ColorColumn ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE
highlight Folded ctermfg=238 guifg=#444444 ctermbg=NONE cterm=NONE gui=NONE
highlight VertSplit ctermfg=238 guifg=#444444 ctermbg=NONE cterm=NONE gui=NONE
highlight LineNr ctermfg=239 guifg=#4e4e4e ctermbg=NONE cterm=NONE gui=NONE
highlight FoldColumn ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=NONE gui=NONE
highlight SignColumn ctermfg=101 guifg=#87875f ctermbg=NONE cterm=NONE gui=NONE
highlight NonText ctermfg=238 guifg=#444444 ctermbg=NONE cterm=NONE gui=NONE
highlight SpecialKey ctermfg=236 guifg=#303030 ctermbg=NONE cterm=NONE gui=NONE


" VimDiff
highlight DiffAdd ctermfg=108 guifg=#7ca296 ctermbg=NONE cterm=reverse gui=reverse
highlight DiffText ctermfg=108 guifg=#7ca296 ctermbg=NONE cterm=reverse gui=reverse
highlight DiffChange ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=reverse gui=reverse
highlight DiffDelete ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=reverse gui=reverse
highlight link diffAdded DiffAdd
highlight link diffBDiffer WarningMsg
highlight link diffChanged DiffChange
highlight link diffCommon WarningMsg
highlight link diffDiffer WarningMsg
highlight link diffFile Directory
highlight link diffIdentical WarningMsg
highlight link diffIndexLine Number
highlight link diffIsA WarningMsg
highlight link diffNoEOL WarningMsg
highlight link diffOnly WarningMsg
highlight link diffRemoved DiffDelete

" Spelling
highlight SpellBad ctermfg=131 guifg=#af5f5f ctermbg=NONE cterm=undercurl gui=undercurl
highlight SpellLocal ctermfg=108 guifg=#7ca296 ctermbg=NONE cterm=undercurl gui=undercurl
highlight SpellCap ctermfg=109 guifg=#87afaf ctermbg=NONE cterm=undercurl gui=undercurl
highlight SpellRare ctermfg=174 guifg=#cd7998 ctermbg=NONE cterm=undercurl gui=undercurl

" Basic colours
highlight Normal ctermfg=187 guifg=#ddd0c0 ctermbg=235 guibg=#262220 cterm=NONE gui=NONE
highlight String ctermfg=144 guifg=#bfaf7f ctermbg=NONE cterm=NONE gui=NONE

