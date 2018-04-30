scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

if !exists('g:loaded_insertdate')
  finish
end

function! insertdate#insertdate()
  let l:nowstr = strftime("%Y/%m/%d %H:%M:%S")
  execute "normal i" . l:nowstr . "\<ESC>"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
