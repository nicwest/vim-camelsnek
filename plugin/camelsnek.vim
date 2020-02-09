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

" Settings: {{{1
if !exists('g:camelsnek_alternative_camel_commands')
  let g:camelsnek_alternative_camel_commands = 0
end

if !exists('g:camelsnek_i_am_an_old_fart_with_no_sense_of_humour_or_internet_culture')
  let g:camelsnek_i_am_an_old_fart_with_no_sense_of_humour_or_internet_culture = 0
end

" Private Functions: {{{1

function! s:repl(count, fn) abort
  let l:s = @s
  if a:count < 1
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

if g:camelsnek_alternative_camel_commands
  command! -nargs=0 -range -bar Pascal :call <SID>repl(<count>, 'camel')
  command! -nargs=0 -range -bar Camel :call <SID>repl(<count>, 'camelback')
else
  command! -nargs=0 -range -bar Camel :call <SID>repl(<count>, 'camel')
  command! -nargs=0 -range -bar CamelB :call <SID>repl(<count>, 'camelback')
endif

if g:camelsnek_i_am_an_old_fart_with_no_sense_of_humour_or_internet_culture
  command! -nargs=0 -range -bar Snake :call <SID>repl(<count>, 'snek')
else
  command! -nargs=0 -range -bar Snek :call <SID>repl(<count>, 'snek')
endif

command! -nargs=0 -range -bar Kebab :call <SID>repl(<count>, 'kebab')


" Teardown: {{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
