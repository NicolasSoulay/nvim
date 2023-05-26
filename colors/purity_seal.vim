" File:      purity_seal.vim
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

hi Normal guibg=#22201e guifg=#c7c7b6
hi EndOfBuffer guifg=#43413c
hi LineNr guifg=#64625a
hi CursorLineNr guifg=#c7c7b6

hi Comment guifg=#64625a

hi Constant guifg=#c7c7b6

hi Identifier guifg=#3c945d

hi Statement guifg=#933737
hi String guifg=#708f99
hi PreProc guifg=#ce9d43

hi Type guifg=#3b779e
