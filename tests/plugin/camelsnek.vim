let s:suite = themis#suite('plugin')
let s:assert = themis#helper('assert')

function! s:suite.after_each() abort
  norm! gg"_dG
endfunction

function! s:suite.snek() abort
  norm! ithis is some text
  exe "norm! $v^:Snek\<CR>"
  call s:assert.equal(getline('.'), 'this_is_some_text')
endfunction

function! s:suite.camel() abort
  exe "norm! $v^:Camel\<CR>"
  call s:assert.equal(getline('.'), '')
endfunction

function! s:suite.camel() abort
  norm! i
  exe "norm! $v^:Camel\<CR>"
  call s:assert.equal(getline('.'), ' ')
endfunction

function! s:suite.camel() abort
  norm! ithis is some text
  exe "norm! $v^:Camel\<CR>"
  call s:assert.equal(getline('.'), 'ThisIsSomeText')
endfunction

function! s:suite.camelback() abort
  norm! ithis is some text
  exe "norm! $v^:CamelB\<CR>"
  call s:assert.equal(getline('.'), 'thisIsSomeText')
endfunction

function! s:suite.kebab() abort
  norm! ithis is some text
  exe "norm! $v^:Kebab\<CR>"
  call s:assert.equal(getline('.'), 'this-is-some-text')
endfunction

function! s:suite.snek_word() abort
  norm! iLookIAmASnek
  Snek
  call s:assert.equal(getline('.'), 'look_i_am_a_snek')
endfunction

function! s:suite.snek_word() abort
  norm! ilook-i-am-a-snek
  Snek
  call s:assert.equal(getline('.'), 'look_i_am_a_snek')
endfunction

function! s:suite.screm() abort
  norm! ii_have_no_lips_and_i_must_screm
  Screm
  call s:assert.equal(getline('.'), 'I_HAVE_NO_LIPS_AND_I_MUST_SCREM')
endfunction

function! s:suite.screm() abort
  norm! iiHaveNoLipsAndIMustScrem
  Screm
  call s:assert.equal(getline('.'), 'I_HAVE_NO_LIPS_AND_I_MUST_SCREM')
endfunction

function! s:suite.camel_word() abort
  norm! ilook_i_am_a_camel
  Camel
  call s:assert.equal(getline('.'), 'LookIAmACamel')
endfunction

function! s:suite.camel_word() abort
  norm! iLOOK_I_AM_A_CAMEL
  Camel
  call s:assert.equal(getline('.'), 'LookIAmACamel')
endfunction

function! s:suite.camelback_word() abort
  norm! ilook_i_am_a_camel
  CamelB
  call s:assert.equal(getline('.'), 'lookIAmACamel')
endfunction

function! s:suite.camelback_word() abort
  norm! iLOOK_I_AM_A_CAMEL
  CamelB
  call s:assert.equal(getline('.'), 'lookIAmACamel')
endfunction

function! s:suite.camelback_word() abort
  norm! iLookIAmAKebab
  Kebab
  call s:assert.equal(getline('.'), 'look-i-am-a-kebab')
endfunction
