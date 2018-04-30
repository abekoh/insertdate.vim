scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_insertdate")
  finish
endif
let g:loaded_insertdate = 1

if !hasmapto('<Plug>InsertDate')
  map <unique> <Leader>d <Plug>InsertDate
endif

noremap <unique> <Plug>InsertDate :<C-u>call insertdate#insertdate()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
