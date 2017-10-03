" Vimscript Setup: {{{1
let s:save_cpo = &cpo
set cpo&vim

" load guard
" uncomment after plugin development.
"if exists("g:loaded_camelsnek")
"  let &cpo = s:save_cpo
"  finish
"endif
"let g:loaded_camelsnek = 1

" Private Functions: {{{1

function! s:repl(count, fn) range abort
  let l:s = @s
  if a:count == 0
    exe "norm! \"sciw\<C-R>=camelsnek#" . a:fn ."(@s)\<CR>"
  else
    exe "norm! gv\"sc\<C-R>=camelsnek#" . a:fn ."(@s)\<CR>"
  endif
  let @s = l:s
endfunction

" Maps: {{{1
"nnoremap <Plug>CAMELSNEK1 :call <SID>some_local_function()<CR>
"nnoremap <Plug>CAMELSNEK2 :call SomeFunction()<CR>

" Commands: {{{1
command! -nargs=0 -range -bar Snek :call <SID>repl(<count>, 'snek')
command! -nargs=0 -range -bar Camel :call <SID>repl(<count>, 'camel')
command! -nargs=0 -range -bar CamelB :call <SID>repl(<count>, 'camelback')

" Teardown: {{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
