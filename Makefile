MAIN_TEX = main.tex

compile:
	latexmk $(MAIN_TEX)
	rm **/__latexindent_temp.tex
	rm __latexindent_temp.te

.PHONY: install
install:
	npm install
	npm audit fix

.PHONY: lint
lint:
	npx textlint $(MAIN_TEX) **/**.tex

.PHONY: fix-lint
fix-lint:
	npx textlint $(MAIN_TEX) **/**.tex --fix