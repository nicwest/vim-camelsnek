[![Build Status](https://travis-ci.org/nicwest/vim-camelsnek.svg?branch=master)](https://travis-ci.org/nicwest/vim-camelsnek)

vim-camelsnek
=============

Convert between camel and snek case

Usage
-----

```viml
:Snek         " converts snake case     ('foo bar' -> 'foo_bar')
:Camel        " converts camel case     ('foo bar' -> 'FooBar')
:CamelB       " converts camelback case ('foo bar' -> 'fooBar')
```

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
