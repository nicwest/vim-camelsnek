let s:suite = themis#suite('autoload')
let s:assert = themis#helper('assert')

function! s:suite.camel() abort
  call s:assert.equal(camelsnek#camel('noop'), 'Noop')
  call s:assert.equal(camelsnek#camel('some plain text with spaces'), 'SomePlainTextWithSpaces')
  call s:assert.equal(camelsnek#camel('collapse     whitespace-and    £$%&!  misc  chars'), 'CollapseWhitespaceAndMiscChars')
  call s:assert.equal(camelsnek#camel('some_snek_case_text'), 'SomeSnekCaseText')
  call s:assert.equal(camelsnek#camel('some-kebab-case-text'), 'SomeKebabCaseText')
  call s:assert.equal(camelsnek#camel('someCamelBackCaseText'), 'SomeCamelBackCaseText')
  call s:assert.equal(camelsnek#camel('trailing space '), 'TrailingSpace')
  call s:assert.equal(camelsnek#camel(' leading space'), 'LeadingSpace')
endfunction

function! s:suite.camelback() abort
  call s:assert.equal(camelsnek#camelback('noop'), 'noop')
  call s:assert.equal(camelsnek#camelback('some plain text with spaces'), 'somePlainTextWithSpaces')
  call s:assert.equal(camelsnek#camelback('collapse     whitespace-and    £$%&!  misc  chars'), 'collapseWhitespaceAndMiscChars')
  call s:assert.equal(camelsnek#camelback('some_snek_case_text'), 'someSnekCaseText')
  call s:assert.equal(camelsnek#camelback('someCamelBackCaseText'), 'someCamelBackCaseText')
  call s:assert.equal(camelsnek#camelback('trailing space '), 'trailingSpace')
  call s:assert.equal(camelsnek#camelback(' leading space'), 'leadingSpace')
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
  call s:assert.equal(camelsnek#snek('trailing space '), 'trailing_space')
  call s:assert.equal(camelsnek#snek(' leading space'), 'leading_space')
  call s:assert.equal(camelsnek#snek('numbers 123456 are tricky'), 'numbers_123456_are_tricky')
  call s:assert.equal(camelsnek#snek('123 567 890'), '123_567_890')
endfunction

function! s:suite.kebab() abort
  call s:assert.equal(camelsnek#kebab('noop'), 'noop')
  call s:assert.equal(camelsnek#kebab('some plain text with spaces'), 'some-plain-text-with-spaces')
  call s:assert.equal(camelsnek#kebab('collapse     whitespace-and    £$%&!  misc  chars'), 'collapse-whitespace-and-misc-chars')
  call s:assert.equal(camelsnek#kebab('SomeCamelCaseText'), 'some-camel-case-text')
  call s:assert.equal(camelsnek#kebab('someCamelBackCaseText'), 'some-camel-back-case-text')
  call s:assert.equal(camelsnek#kebab('some_snek_case_text'), 'some-snek-case-text')
  call s:assert.equal(camelsnek#kebab('CamelTEXTWithUpperSection'), 'camel-text-with-upper-section')
  call s:assert.equal(camelsnek#kebab('CamelWithTrailingUPPER'), 'camel-with-trailing-upper')
  call s:assert.equal(camelsnek#kebab('CAMELWithLeadingUpper'), 'camel-with-leading-upper')
  call s:assert.equal(camelsnek#kebab('trailing space '), 'trailing-space')
  call s:assert.equal(camelsnek#kebab(' leading space'), 'leading-space')
  call s:assert.equal(camelsnek#kebab('numbers 123456 are tricky'), 'numbers-123456-are-tricky')
  call s:assert.equal(camelsnek#kebab('123 567 890'), '123-567-890')
endfunction
