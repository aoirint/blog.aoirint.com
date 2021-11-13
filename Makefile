SHELL=/bin/bash

.PHONY: serve
serve:
	if command -v xdg-open; then xdg-open "http://127.0.0.1:8803"; fi
	miyadaiku-build . -sw -o ./public -p 8803

.PHONY: build
build:
	miyadaiku-build . -o ./public

.PHONY: rebuild
rebuild:
	miyadaiku-build . -o ./public --rebuild

.PHONY: init
init:
	git submodule update --init --recursive

.PHONY: new
new:
	$(eval YEAR=$(shell date '+%Y'))
	$(eval NAME=$(shell pwgen -As 20))
	$(eval DIR=contents/entry/$(YEAR)/$(NAME)/)
	$(eval FILE=$(DIR)index.md)

	mkdir -p "$(DIR)"
	editor "$(FILE)"

.PHONY: clean
clean:
	find contents -type d -empty -print -delete
