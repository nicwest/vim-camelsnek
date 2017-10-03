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
function! s:snek() abort
  let l:s = @s
  norm! gv"sd
  let @s = camelsnek#snek(@s)
  norm! "sP
  let @s = l:s
endfunction

function! s:camel() abort
  let l:s = @s
  norm! gv"sd
  let @s = camelsnek#camel(@s)
  norm! "sP
  let @s = l:s
endfunction

function! s:camelback() abort
  let l:s = @s
  norm! gv"sd
  let @s = camelsnek#camelback(@s)
  norm! "sP
  let @s = l:s
endfunction

" Maps: {{{1
"nnoremap <Plug>CAMELSNEK1 :call <SID>some_local_function()<CR>
"nnoremap <Plug>CAMELSNEK2 :call SomeFunction()<CR>

" Commands: {{{1
command! -nargs=0 -range -bar Snek :call <SID>snek()
command! -nargs=0 -range -bar Camel :call <SID>camel()
command! -nargs=0 -range -bar CamelB :call <SID>camelback()

" Teardown: {{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
