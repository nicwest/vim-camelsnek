.PHONY: init test clean lint

test:
	./vim-themis/bin/themis --reporter dot -r tests

init:
	git clone https://github.com/thinca/vim-themis
	git clone https://github.com/syngan/vim-vimlint
	git clone https://github.com/ynkdir/vim-vimlparser

lint:
	./vim-vimlint/bin/vimlint.sh -l ./vim-vimlint -p ./vim-vimlparser -e EVL102.l:_=1 -c func_abort=1 autoload plugin

clean:
	rm -rf vim-themis vim-vimlint vim-vimlparser
