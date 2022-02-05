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

let s:p.inactive.left   = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.inactive.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:p.inactive.right  = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.insert.left     = [ s:fg_bg( s:_bg, s:_10 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.insert.middle   = s:p.inactive.middle
let s:p.insert.right    = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.error    = [ s:fg_bg( s:__0, s:__1 )                          ]
let s:p.normal.left     = [ s:fg_bg( s:_bg, s:__2 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.middle   = s:p.inactive.middle
let s:p.normal.right    = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.warning  = [ s:fg_bg( s:__0, s:_11 )                          ]
let s:p.replace.left    = [ s:fg_bg( s:_bg, s:__1 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.replace.middle  = s:p.inactive.middle
let s:p.replace.right   = [ s:fg_bg( s:_bg, s:__1 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.tabline.left    = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.tabline.middle  = s:p.inactive.middle
let s:p.tabline.right   = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.tabline.tabsel  = [ s:fg_bg( s:_bg, s:__3 )                          ]
let s:p.visual.left     = [ s:fg_bg( s:_bg, s:__9 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.visual.right    = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]

let g:lightline#colorscheme#coffee#palette = s:p


"""
" Colour scheme
"""


" Common colors and settings
highlight PreProc guifg=#dfaf87 guibg=NONE gui=NONE
highlight Function guifg=#fdd0c0 guibg=NONE gui=NONE
highlight Identifier guifg=#87afaf guibg=NONE gui=NONE
highlight Statement guifg=#878787 guibg=NONE gui=NONE
highlight Constant guifg=#af8787 guibg=NONE gui=NONE
highlight Type guifg=#af875f guibg=NONE gui=NONE
highlight Label guifg=#878787 guibg=NONE gui=NONE
highlight Special guifg=#af5f5f guibg=NONE gui=NONE
highlight Operator guifg=#878787 guibg=NONE gui=NONE
highlight Title guifg=#dfaf87 guibg=NONE gui=NONE
highlight Conditional guifg=#878787 guibg=NONE gui=NONE
highlight StorageClass guifg=#875f5f guibg=NONE gui=NONE
highlight htmlStatement guifg=#878787 guibg=NONE gui=NONE
highlight htmlItalic guifg=#dfaf87 guibg=NONE gui=NONE
highlight htmlArg guifg=#875f5f guibg=NONE gui=NONE
highlight cssIdentifier guifg=#dfaf87 guibg=NONE gui=NONE
highlight cssClassName guifg=#dfaf87 guibg=NONE gui=NONE
highlight Structure guifg=#875f5f guibg=NONE gui=NONE
highlight Typedef guifg=#875f5f guibg=NONE gui=NONE
highlight Repeat guifg=#878787 guibg=NONE gui=NONE
highlight Keyword guifg=#57afaf guibg=NONE gui=NONE
highlight Exception guifg=#878787 guibg=NONE gui=NONE
highlight Number guifg=#87afaf guibg=NONE gui=NONE
highlight Character guifg=#87afaf guibg=NONE gui=NONE
highlight Boolean guifg=#87afaf guibg=NONE gui=NONE
highlight Float guifg=#87afaf guibg=NONE gui=NONE
highlight Include guifg=#dfaf87 guibg=NONE gui=NONE
highlight Define guifg=#dfaf87 guibg=NONE gui=NONE
highlight Comment guifg=#6c7468 guibg=NONE gui=NONE

" VimScript syntax
highlight link vimAutoCmdSfxList Type
highlight link vimAutoEventList Identifier
highlight link vimCmdSep Special
highlight link vimCommentTitle SpecialComment
highlight link vimFunction Function
highlight link vimUserFunc Function

" Window UI
highlight MoreMsg guifg=#dfaf87 guibg=NONE gui=NONE
highlight SpecialComment guifg=#8f9f9f guibg=NONE gui=reverse
highlight Underlined guifg=#af5f5f guibg=NONE gui=NONE
highlight Todo guifg=#dfaf87 guibg=NONE gui=reverse
highlight Visual guifg=#ddd0c0 guibg=#8f9494 gui=NONE
highlight Question guifg=#875f5f guibg=NONE gui=NONE
highlight Search guifg=#ddd0c0 guibg=NONE gui=NONE
highlight PmenuSel guifg=#ddd0c0 guibg=NONE gui=NONE
highlight MatchParen guifg=#ddd0c0 guibg=#2b232f gui=NONE

highlight Error guifg=#af5f5f guibg=NONE gui=reverse
highlight ErrorMsg guifg=#af5f5f guibg=NONE gui=NONE
highlight WarningMsg guifg=#af5f5f guibg=NONE gui=NONE
highlight Directory guifg=#af5f5f guibg=NONE gui=NONE
highlight Cursor guifg=NONE guibg=NONE gui=NONE

highlight WildMenu guifg=#ddd0c0 guibg=NONE gui=NONE
highlight ModeMsg guifg=#ddd0c0 guibg=NONE gui=NONE
highlight Macro guifg=#dfaf87 guibg=NONE gui=NONE
highlight PreCondit guifg=#dfaf87 guibg=NONE gui=NONE
highlight IncSearch guifg=#af5f5f guibg=NONE gui=reverse
highlight VisualNOS guifg=NONE guibg=NONE gui=underline

highlight CursorLineNR guifg=#8f9494 guibg=NONE gui=NONE
highlight StatusLine guifg=#8f9494 guibg=NONE gui=NONE
highlight StatusLineNC guifg=#6c6c6c guibg=NONE gui=NONE
highlight StatusLineTerm guifg=#8f9494 guibg=NONE gui=NONE
highlight StatusLineTermNC guifg=#6c6c6c guibg=NONE gui=NONE

highlight Pmenu guifg=#8f9494 guibg=NONE gui=NONE
highlight PmenuSbar guifg=#262220 guibg=NONE gui=NONE
highlight PmenuThumb guifg=#262220 guibg=NONE gui=NONE
highlight TabLineSel guifg=#8f9494 guibg=NONE gui=NONE
highlight TabLine guifg=#6c6c6c guibg=NONE gui=NONE
highlight TabLineFill guifg=#6c6c6c guibg=NONE gui=NONE

highlight CursorLine guifg=NONE guibg=NONE gui=NONE

highlight CursorColumn guifg=NONE guibg=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=NONE gui=NONE
highlight Folded guifg=#444444 guibg=NONE gui=NONE
highlight VertSplit guifg=#444444 guibg=NONE gui=NONE
highlight LineNr guifg=#4e4e4e guibg=NONE gui=NONE
highlight FoldColumn guifg=#87afaf guibg=NONE gui=NONE
highlight SignColumn guifg=#87875f guibg=NONE gui=NONE
highlight NonText guifg=#444444 guibg=NONE gui=NONE
highlight SpecialKey guifg=#303030 guibg=NONE gui=NONE


" VimDiff
highlight DiffAdd guifg=#7ca296 guibg=NONE gui=reverse
highlight DiffText guifg=#7ca296 guibg=NONE gui=reverse
highlight DiffChange guifg=#87afaf guibg=NONE gui=reverse
highlight DiffDelete guifg=#af5f5f guibg=NONE gui=reverse
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
highlight SpellBad guifg=#af5f5f guibg=NONE gui=undercurl
highlight SpellLocal guifg=#7ca296 guibg=NONE gui=undercurl
highlight SpellCap guifg=#87afaf guibg=NONE gui=undercurl
highlight SpellRare guifg=#cd7998 guibg=NONE gui=undercurl

" Basic colours
highlight Normal guifg=#ddd0c0 guibg=#262220 gui=NONE
highlight String guifg=#bfaf7f guibg=NONE gui=NONE

