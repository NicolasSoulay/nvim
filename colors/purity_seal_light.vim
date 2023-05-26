" File:      purity_seal_light.vim
" Maintainer: Lacerda
" Modified:
" License:


if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'purity_seal'

hi Normal guibg=#fafae8 guifg=#64625a
hi EndOfBuffer guifg=#c7c7b6
hi LineNr guifg=#c7c7b6
hi CursorLineNr guifg=#64625a
hi CursorLine guibg=#c7c7b6 

hi Comment guifg=#c7c7b6

hi Constant guifg=#64625a

hi Identifier guifg=#3c945d

hi Statement guifg=#933737
hi String guifg=#708f99
hi PreProc guifg=#ce9d43

hi Type guifg=#3b779e
