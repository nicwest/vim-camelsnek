" Vimscript Setup: {{{1
let s:save_cpo = &cpo
set cpo&vim

" Library Interface: {{{1
function! camelsnek#camel(text) abort
  let l:text = substitute(a:text, '[^A-Za-z0-9]', ' ', 'g')
  let l:parts = split(l:text, '\s\+')
  let l:text = join(map(l:parts, 'toupper(v:val[0]) . v:val[1:]'), '')
  return l:text
endfunction

function! camelsnek#camelback(text) abort
  let l:camel = camelsnek#camel(a:text)
  return tolower(l:camel[0]) . l:camel[1:]
endfunction

function! camelsnek#snek(text) abort
  let l:text = substitute(a:text, '\C\([^A-Za-z0-9]\)', ' ', 'g')
  let l:text = substitute(l:text, '\C\([^a-z]\)\([a-z]\)', ' \1\2', 'g')
  let l:text = substitute(l:text, '\C\([a-z]\)\([^a-z]\)', '\1 \2', 'g')
  let l:text = substitute(l:text, '^\s*\(.*\S\)\s*$', '\1', 'g')
  let l:text = substitute(l:text, '\s\+', '_', 'g')
  return tolower(l:text)
endfunction

function! camelsnek#kebab(text) abort
  let l:text = camelsnek#snek(a:text)
  let l:text = substitute(l:text, '_', '-', 'g')
  return l:text
endfunction

" Teardown:{{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
