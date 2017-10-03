let s:suite = themis#suite('autoload')
let s:assert = themis#helper('assert')

function! s:suite.camel() abort
  call s:assert.equal(camelsnek#camel('noop'), 'Noop')
  call s:assert.equal(camelsnek#camel('some plain text with spaces'), 'SomePlainTextWithSpaces')
  call s:assert.equal(camelsnek#camel('collapse     whitespace-and    £$%&!  misc  chars'), 'CollapseWhitespaceAndMiscChars')
  call s:assert.equal(camelsnek#camel('some_snek_case_text'), 'SomeSnekCaseText')
  call s:assert.equal(camelsnek#camel('someCamelBackCaseText'), 'SomeCamelBackCaseText')
endfunction

function! s:suite.camelback() abort
  call s:assert.equal(camelsnek#camelback('noop'), 'noop')
  call s:assert.equal(camelsnek#camelback('some plain text with spaces'), 'somePlainTextWithSpaces')
  call s:assert.equal(camelsnek#camelback('collapse     whitespace-and    £$%&!  misc  chars'), 'collapseWhitespaceAndMiscChars')
  call s:assert.equal(camelsnek#camelback('some_snek_case_text'), 'someSnekCaseText')
  call s:assert.equal(camelsnek#camelback('someCamelBackCaseText'), 'someCamelBackCaseText')
endfunction

function! s:suite.snek() abort
  call s:assert.equal(camelsnek#snek('noop'), 'noop')
  call s:assert.equal(camelsnek#snek('some plain text with spaces'), 'some_plain_text_with_spaces')
  call s:assert.equal(camelsnek#snek('collapse     whitespace-and    £$%&!  misc  chars'), 'collapse_whitespace_and_misc_chars')
  call s:assert.equal(camelsnek#snek('SomeCamelCaseText'), 'some_camel_case_text')
  call s:assert.equal(camelsnek#snek('someCamelBackCaseText'), 'some_camel_back_case_text')
  call s:assert.equal(camelsnek#snek('CamelTEXTWithUpperSection'), 'camel_text_with_upper_section')
  call s:assert.equal(camelsnek#snek('CamelWithTrailingUPPER'), 'camel_with_trailing_upper')
  call s:assert.equal(camelsnek#snek('CAMELWithLeadingUpper'), 'camel_with_leading_upper')
endfunction

