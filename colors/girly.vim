highlight clear
if exists('syntax_on')
syntax reset
endif
let s:a=expand('<sfile>:t:r')
let g:colors_name=s:a
if has('gui_running') || &termguicolors
let s:b='gui'
let s:c='#7b5a5f'
let s:d='#976365'
let s:e='#cf9ea1'
let s:f='#ffd0d9'
let s:g='#f7f0ee'
let s:h='#7696b9'
let s:i='#8ca6cb'
let s:j='#97c2dd'
let s:ba='#a3deff'
let s:bb='#62bbfd'
let s:bc='#886f5f'
let s:bd='#c3a570'
let s:be='#e0c078'
let s:bf='#fedc81'
let s:bh='#ffaf00'
let s:bi='#88656b'
let s:bj='#c38795'
let s:ca='#e198aa'
let s:cb='#ffaabf'
let s:cc='#fd86aa'
let s:cd='#875e76'
let s:ce='#bf72b5'
let s:cf='#db7cd4'
let s:cg='#f887f4'
let s:ch='#e353fd'
let s:ci='#a7a595'
let s:cj='#d0ddc0'
let s:da='#a58cb8'
let s:db='#cdb2f9'
else
set t_Co=256
let s:b='cterm'
let s:c='95'
let s:d='138'
let s:e='181'
let s:f='224'
let s:g='255'
let s:h='68'
let s:i='110'
let s:j='153'
let s:ba='195'
let s:bb='75'
let s:bc='137'
let s:bd='179'
let s:be='222'
let s:bf='222'
let s:bh='214'
let s:bi='131'
let s:bj='169'
let s:ca='211'
let s:cb='217'
let s:cc='211'
let s:cd='96'
let s:ce='134'
let s:cf='176'
let s:cg='213'
let s:ch='171'
let s:ci='247'
let s:cj='187'
let s:da='139'
let s:db='183'
endif
if &bg=='light'
let [s:c,s:d,s:f,s:g]=[s:g,s:f,s:d,s:c]
let [s:h,s:j,s:ba]=[s:j,s:h,s:bb]
let [s:bc,s:be,s:bf]=[s:be,s:bc,s:bh]
let [s:bi,s:ca,s:cb]=[s:ca,s:bi,s:cc]
let [s:cd,s:cf,s:cg]=[s:cf,s:cd,s:ch]
endif
let s:dc=s:b.'fg='
let s:dd=s:b.'bg='
let s:de=s:b==# 'gui' ? 'guisp=' : 'ctermul='
let s:df=has('gui_running') ? 'gui=' : 'cterm='
let s:dg=s:df.'NONE'
let s:dh=s:df.'bold'
let s:di=s:df.'italic'
let s:dj=s:df.'underline'
let s:ea=s:df.'undercurl'
exe 'hi Normal' s:dc s:f s:dd s:c
exe 'hi Cursor' s:dc s:c s:dd s:j
exe 'hi CursorIM' s:dc s:g s:dd s:cb
exe 'hi CursorLine' s:dj
exe 'hi LineNr' s:dc s:e s:dd s:d
exe 'hi CursorLineNR' s:dc s:g s:dd s:d s:dg
exe 'hi CursorColumn' s:dd s:h
exe 'hi SignColumn' s:dc s:bf s:dd s:d
exe 'hi FoldColumn' s:dc s:e s:dd s:d
exe 'hi Folded' s:dc s:e s:dd s:c
exe 'hi VertSplit' s:dc s:d s:dd s:d
exe 'hi ColorColumn' s:dc s:e s:dd s:d
exe 'hi TabLine' s:dc s:e s:dd s:d s:dg
exe 'hi TabLineFill' s:dc s:d s:dd s:d s:dg
exe 'hi TabLineSel' s:dc s:cb s:dd s:c s:dg
exe 'hi Directory' s:dc s:bf
exe 'hi Search' s:dc s:c s:dd s:bf s:dg
hi! link IncSearch Cursor
exe 'hi StatusLine' s:dc s:cb s:dd s:d s:dg
exe 'hi StatusLineNC' s:dc s:e s:dd s:d s:dg
exe 'hi StatusLineTerm' s:dc s:cb s:dd s:ce s:dg
exe 'hi StatusLineTermNC' s:dc s:cd s:dd s:ce s:dg
exe 'hi Question' s:dc s:cb s:dd s:c s:dg
exe 'hi Title' s:dc s:j s:dd s:c s:dh
exe 'hi ModeMsg' s:dc s:f s:dd s:c s:dg
exe 'hi MoreMsg' s:dc s:e s:dd s:c s:dg
hi! link WildMenu Visual
exe 'hi MatchParen' s:dc s:cb s:dd s:c s:dh
exe 'hi Visual' s:dc s:c s:dd s:cb s:dg
exe 'hi VisualNOS' s:dc s:c s:dd s:ca s:dg
exe 'hi NonText' s:dc s:d s:dg
exe 'hi Todo' s:dc s:ba s:dd 'NONE' s:dh
exe 'hi Underlined' s:dc s:ba
exe 'hi Error' s:dc s:cg s:dd 'NONE' s:dh
exe 'hi ErrorMsg' s:dc s:cg s:dd 'NONE' s:dg
exe 'hi WarningMsg' s:dc s:cb
hi! link Ignore NonText
hi! link SpecialKey NonText
exe 'hi Function' s:dc s:i
exe 'hi Identifier ' s:dc s:f
exe 'hi Constant' s:dc s:i
exe 'hi String' s:dc s:j s:dd s:d
exe 'hi Character' s:dc s:i
exe 'hi Number' s:dc s:i
hi! link Boolean Number
hi! link Float Number
exe 'hi Statement' s:dc s:j
exe 'hi Conditional' s:dc s:j
exe 'hi Repeat' s:dc s:j
exe 'hi Label' s:dc s:j s:dh
exe 'hi Keyword' s:dc s:i
exe 'hi Exception' s:dc s:ca
exe 'hi Comment' s:dc s:bd
exe 'hi SpecialComment' s:dc s:bd s:di
exe 'hi SpecialChar' s:dc s:j
exe 'hi Tag' s:dc s:be
exe 'hi Type' s:dc s:bf
exe 'hi Delimiter' s:dc s:cb
exe 'hi Debug' s:dc s:e
hi! link Operator Normal
hi! link Special Statement
exe 'hi PreProc' s:dc s:j
exe 'hi DiffAdd' s:dc s:j s:dd s:h
exe 'hi DiffDelete' s:dc s:bj s:dd s:bi
exe 'hi DiffChange' s:dc s:bd s:dd s:bc
exe 'hi DiffText' s:dc s:g s:dd s:bd s:dg
exe 'hi Pmenu' s:dc s:d s:dd s:f
exe 'hi PMenuSel' s:dc s:c s:dd s:cb s:dg
exe 'hi PmenuMatch' s:dc s:bc s:dd s:f
exe 'hi PMenuMatchSel' s:dc s:bc s:dd s:cb s:dg
exe 'hi PmenuKind' s:dc s:h s:dd s:f
exe 'hi PMenuKindSel' s:dc s:h s:dd s:cb s:dg
exe 'hi PmenuExtra' s:dc s:e s:dd s:f
exe 'hi PmenuExtraSel' s:dc s:e s:dd s:cb
exe 'hi PmenuSbar' s:dd s:e
exe 'hi PmenuThumb' s:dd s:f
exe 'hi SpellBad' s:dc s:cf s:dd s:cd s:de s:cg s:ea
exe 'hi SpellCap' s:dc s:ca s:dd s:c s:de s:cb s:ea
exe 'hi SpellLocal' s:dc s:be s:dd s:c s:de s:bf s:ea
exe 'hi SpellRare' s:dc s:j s:dd s:c s:de s:ba s:ea
hi! link Terminal Normal
if s:b==# 'gui'
let g:terminal_ansi_colors=[ s:c,s:ce,s:bd,s:bj,s:i,s:da,s:ci,s:f,s:e,s:cg,s:bf,s:cb,s:ba,s:db,s:cj,s:g ]
endif
exe 'hi JavaScriptEmbed' s:dc s:bf s:dd s:d
exe 'hi vimEscape' s:dc s:e s:dd s:d
exe 'hi EasyMotionShadeDefault' s:dc s:e s:dd s:c
exe 'hi EasyMotionTarget' s:dc s:ba s:dd s:c
exe 'hi EasyMotionTarget2First' s:dc s:bf s:dd s:c
hi! link EasyMotionTarget2Second EasyMotionTarget2First
exe 'hi ALEErrorSign' s:dc s:cb s:dd s:d
exe 'hi ALEWarningSign' s:dc s:bf s:dd s:d
let g:rainbow_conf=get(g:,'rainbow_conf',{})
let g:rainbow_conf[s:b.'fgs']=[s:ba,s:bf,s:cb,s:cg]
if s:b==# 'gui'
let g:rcsv_colorpairs=[['7',s:ba],['7',s:bf],['7',s:cb],['7',s:cg],['7',s:db]]
else
let g:rcsv_colorpairs=[[s:ba,'Gray'],[s:bf,'Gray'],[s:cb,'Gray'],[s:cg,'Gray'],[s:db,'Gray']]
endif
call extend(g:rcsv_colorpairs,g:rcsv_colorpairs)
exe 'hi GitGutterAdd' s:dc s:j s:dd s:i
exe 'hi GitGutterDelete' s:dc s:cb s:dd s:bj
exe 'hi GitGutterChange' s:dc s:be s:dd s:bd
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
