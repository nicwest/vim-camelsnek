let s:suite = themis#suite('autoload')
let s:assert = themis#helper('assert')

function! s:suite.camel() abort
  call s:assert.equal(camelsnek#camel('    '), '    ')
  call s:assert.equal(camelsnek#camel('noop'), 'Noop')
  call s:assert.equal(camelsnek#camel('some plain text with spaces'), 'SomePlainTextWithSpaces')
  call s:assert.equal(camelsnek#camel('collapse     whitespace-and    £$%&!  misc  chars'), 'CollapseWhitespaceAndMiscChars')
  call s:assert.equal(camelsnek#camel('some_snek_case_text'), 'SomeSnekCaseText')
  call s:assert.equal(camelsnek#camel('some-kebab-case-text'), 'SomeKebabCaseText')
  call s:assert.equal(camelsnek#camel('someCamelBackCaseText'), 'SomeCamelBackCaseText')
  call s:assert.equal(camelsnek#camel('trailing space '), 'TrailingSpace')
  call s:assert.equal(camelsnek#camel(' leading space'), 'LeadingSpace')
  call s:assert.equal(camelsnek#camel('A_LOUD_SNEK'), 'ALoudSnek')
endfunction

function! s:suite.camelback() abort
  call s:assert.equal(camelsnek#camel('    '), '    ')
  call s:assert.equal(camelsnek#camelback('noop'), 'noop')
  call s:assert.equal(camelsnek#camelback('some plain text with spaces'), 'somePlainTextWithSpaces')
  call s:assert.equal(camelsnek#camelback('collapse     whitespace-and    £$%&!  misc  chars'), 'collapseWhitespaceAndMiscChars')
  call s:assert.equal(camelsnek#camelback('some_snek_case_text'), 'someSnekCaseText')
  call s:assert.equal(camelsnek#camelback('someCamelBackCaseText'), 'someCamelBackCaseText')
  call s:assert.equal(camelsnek#camelback('trailing space '), 'trailingSpace')
  call s:assert.equal(camelsnek#camelback(' leading space'), 'leadingSpace')
  call s:assert.equal(camelsnek#camelback('A_LOUD_SNEK'), 'aLoudSnek')
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
  call s:assert.equal(camelsnek#snek('some-kebab-case-text'), 'some_kebab_case_text')
  call s:assert.equal(camelsnek#snek('A_LOUD_SNEK'), 'a_loud_snek')
endfunction

function! s:suite.screm() abort
  call s:assert.equal(camelsnek#screm('bep'), 'BEP')
  call s:assert.equal(camelsnek#screm('some plain text with spaces'), 'SOME_PLAIN_TEXT_WITH_SPACES')
  call s:assert.equal(camelsnek#screm('collapse     whitespace-and    £$%&!  misc  chars'), 'COLLAPSE_WHITESPACE_AND_MISC_CHARS')
  call s:assert.equal(camelsnek#screm('SomeCamelCaseText'), 'SOME_CAMEL_CASE_TEXT')
  call s:assert.equal(camelsnek#screm('someCamelBackCaseText'), 'SOME_CAMEL_BACK_CASE_TEXT')
  call s:assert.equal(camelsnek#screm('CamelTEXTWithUpperSection'), 'CAMEL_TEXT_WITH_UPPER_SECTION')
  call s:assert.equal(camelsnek#screm('CamelWithTrailingUPPER'), 'CAMEL_WITH_TRAILING_UPPER')
  call s:assert.equal(camelsnek#screm('CAMELWithLeadingUpper'), 'CAMEL_WITH_LEADING_UPPER')
  call s:assert.equal(camelsnek#screm('trailing space '), 'TRAILING_SPACE')
  call s:assert.equal(camelsnek#screm(' leading space'), 'LEADING_SPACE')
  call s:assert.equal(camelsnek#screm('numbers 123456 are tricky'), 'NUMBERS_123456_ARE_TRICKY')
  call s:assert.equal(camelsnek#screm('123 567 890'), '123_567_890')
  call s:assert.equal(camelsnek#screm('some-kebab-case-text'), 'SOME_KEBAB_CASE_TEXT')
  call s:assert.equal(camelsnek#screm('a_loud_snek'), 'A_LOUD_SNEK')
  call s:assert.equal(camelsnek#screm('A_LOUD_SNEK'), 'A_LOUD_SNEK')
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
  call s:assert.equal(camelsnek#kebab('A_LOUD_SNEK'), 'a-loud-snek')
endfunction
