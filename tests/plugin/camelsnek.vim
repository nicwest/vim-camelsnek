let s:suite = themis#suite('plugin')
let s:assert = themis#helper('assert')

function! s:suite.after_each() abort
  norm! gg"_dG
endfunction

function! s:suite.snek() abort
  norm! imy_func(SomeCamelCaseText)
  exe "norm! $vib:Snek\<CR>"
  call s:assert.equal(getline('.'), 'my_func(some_camel_case_text)')
endfunction

function! s:suite.camel() abort
  norm! imy_func(some_camel_case_text)
  exe "norm! $vib:Camel\<CR>"
  call s:assert.equal(getline('.'), 'my_func(SomeCamelCaseText)')
endfunction

function! s:suite.camelback() abort
  norm! imy_func(some_camel_case_text)
  exe "norm! $vib:CamelB\<CR>"
  call s:assert.equal(getline('.'), 'my_func(someCamelCaseText)')
endfunction
