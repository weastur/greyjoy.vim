" File:       greyjoy.vim
" Maintainer: Pavel Sapezhka <me@weastur.com>
" Repository: https://github.com/weastur/greyjoy.vim
" License:    MIT

set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'grayjoy'

let s:white   = 15
let s:black   = 16
let s:gray235 = 235
let s:gray245 = 245
let s:gray255 = 255
let s:italic    = 'italic'
let s:bold      = 'bold'

function! s:hi(...)
    let group = a:1
    let fg = get(a:, 2, s:gray255)
    let bg = get(a:, 3, s:black)
    let attr = get(a:, 4, 'NONE')

    let cmd = ['hi', group]

    if fg != ''
        call extend(cmd, [printf('ctermfg=%s', fg)])
    endif

    if bg != ''
        call extend(cmd, [printf('ctermbg=%s', bg)])
    endif

    if attr != ''
        call extend(cmd, [printf('cterm=%s', attr)])
    endif

    execute join(cmd, ' ')
endfunction

call s:hi('Constant', s:gray245)
call s:hi('Comment', s:gray245, s:black, s:italic)
call s:hi('Identifier')
call s:hi('Statement', s:white, s:black, s:bold)
call s:hi('PreProc', s:white, s:black, s:bold)
call s:hi('Type', s:white, s:black, s:bold)
call s:hi('Special')
call s:hi('Underlined')
call s:hi('Ignore')
call s:hi('Error', s:white, s:gray235, s:bold)
call s:hi('Todo', s:white, s:gray235, s:bold)

call s:hi('ColorColumn', '', s:gray235)
call s:hi('Cursor', s:black, s:gray255)
call s:hi('CursorLine', '', s:gray235)
call s:hi('CursorLineNr', s:white, s:black, s:bold)
call s:hi('DiffAdd', s:gray235, s:gray255, s:bold)
call s:hi('DiffChange', s:gray245, s:black)
call s:hi('DiffDelete', s:gray235, s:black)
call s:hi('DiffText', s:gray235, s:gray255, s:bold)
call s:hi('Directory', s:white, s:black, s:bold)
call s:hi('ErrorMsg', s:gray235, s:white, s:bold)
call s:hi('FoldColumn', s:gray245)
call s:hi('Folded')
call s:hi('LineNr', s:gray245)
call s:hi('MatchParen', s:gray235, s:gray255, s:bold)
call s:hi('MoreMsg')
call s:hi('NonText', s:gray245)
call s:hi('Normal')
call s:hi('Pmenu', s:white, s:gray235)
call s:hi('PmenuSel', s:gray235, s:white)
call s:hi('PmenuThumb', s:gray235, s:gray255)
call s:hi('Question')
call s:hi('Search', s:white, s:gray245)
call s:hi('SignColumn')
call s:hi('SpecialKey', s:gray245, s:black, s:bold)
call s:hi('SpellBad', s:black, s:gray255, s:bold)
call s:hi('SpellCap', s:black, s:gray255)
call s:hi('SpellLocal', s:gray235, s:gray255)
call s:hi('SpellRare', s:gray245, s:gray255)
call s:hi('StatusLineTerm', s:gray235, s:gray255)
call s:hi('StatusLineTermNC', s:gray235, s:gray255, s:bold)
call s:hi('Title', s:white, s:black, s:bold)
call s:hi('Visual', s:white, s:gray245)
call s:hi('WarningMsg', s:gray245, s:black, s:bold)
call s:hi('WildMenu', s:black, s:gray245)
