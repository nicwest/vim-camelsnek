vim-camelsnek
=============

[![Build Status](https://travis-ci.org/nicwest/vim-camelsnek.svg?branch=master)](https://travis-ci.org/nicwest/vim-camelsnek)

Convert between camel and snek case

![Usage](https://user-images.githubusercontent.com/8506829/95635740-dd389100-0a52-11eb-8c25-c6b215f9fc7f.gif)

Installation
------------

Use your favorite plugin manager of choice, ex. [vim-plug](https://github.com/junegunn/vim-plug).

Usage
-----

```viml
:Snek     " converts to snake_case               ('foo bar' -> 'foo_bar')
:Camel    " converts to CamelCase                ('foo bar' -> 'FooBar')
:CamelB   " converts to camelbackCase            ('foo bar' -> 'fooBar')
:Kebab    " converts to kebab-case               ('foo bar' -> 'foo-bar')
:Screm    " converts to SCREAMING_SNAKE_CASE     ('foo bar' -> 'FOO_BAR')
```

These commands will function from both normal and visual mode. When in normal
mode the commands will attempt to operate on the word object under cursor,
when in visual mode it will operate on the selection.

Settings
--------

```viml
" Some organisations use the terms Camel and Pascal to differentiate between
" the two variants of camel case. This setting changes the commands:
" :Camel  -> :Pascal
" :CamelB -> :Camel
let g:camelsnek_alternative_camel_commands = 1

" This setting also changes the name of two commands:
" :Snek  -> :Snake
" :Screm -> :Snakecaps
let g:camelsnek_i_am_an_old_fart_with_no_sense_of_humour_or_internet_culture = 0
let g:camelsnek_no_fun_allowed = 0 " Shorter alias for the above.


```

Tests
-----

To run the tests pull the [themis test suite](https://github.com/thinca/vim-themis)
(you don't have to install it but you can if you want).

```shell
git clone git@github.com:thinca/vim-themis.git
./vim-themis/bin/themis --reporter dot test
```

Alternatively you can use the Makefile in the root dir, which will clone the
dependencies and run the tests and linter.

```shell
make init
make test
make lint
```
