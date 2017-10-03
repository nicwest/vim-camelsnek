[![Build Status](https://travis-ci.org/nicwest/vim-camelsnek.svg?branch=master)](https://travis-ci.org/nicwest/vim-camelsnek)

vim-camelsnek
=============

Convert between camel and snek case

[![asciicast](https://asciinema.org/a/140650.png)](https://asciinema.org/a/140650)

Usage
-----

```viml
:Snek         " converts to snake case     ('foo bar' -> 'foo_bar')
:Camel        " converts to camel case     ('foo bar' -> 'FooBar')
:CamelB       " converts to camelback case ('foo bar' -> 'fooBar')
:Kebab        " converts to kebab case     ('foo bar' -> 'foo-bar')
```

These commands will function from both normal and visual mode. When in normal
mode the commands will attempt to operate on the word object under cursor,
when in visual mode it will operate on the selection.

Tests
-----

To run the tests pull the [themis test
suite](https://github.com/thinca/vim-themis) (you don't have to install it but
you can if you want).

```
git clone git@github.com:thinca/vim-themis.git
./vim-themis/bin/themis --reporter dot test
```

Alternatively you can use the Makefile in the root dir, which will clone the
dependencies and run the tests and linter.

```
make init
make test
make lint
```
