.PHONY : serve
serve :
	jekyll serve

.PHONY : post
.ONESHELL :
post : require-TITLE icon
	TITLE=$(TITLE)
	URL_TITLE=$(shell echo $(TITLE) | tr A-Z' ' a-z'-')
	ICON=$(shell echo $(TITLE) | head -c 1 | tr a-z A-Z)
	DATE=$(shell date '+%Y-%m-%d')
	FILE=weblog/_posts/$$DATE-$$URL_TITLE.md
	cat weblog/_template \
	| sed "s/TITLE/$$TITLE/" \
	| sed "s/ICON/$$ICON/" \
	>> $$FILE
	emacs $$FILE

.PHONY : icon
.ONESHELL :
icon : require-TITLE
	TITLE=$(TITLE)
	ICON=$(shell echo $(TITLE) | head -c 1 | tr a-z A-Z)
	FILE=images/$$ICON.png
	convert -size 100x100 canvas:white -gravity Center \
        -font NewCenturySchlbk-Roman -pointsize 40 -kerning 2 \
        -fill "#25e" \
        -annotate +0+5 $$ICON \
        -fill none -stroke "#c3b7aa" -strokewidth 1 \
        -draw "rectangle 0,0 99,99" \
	$$FILE

.PHONY : require-TITLE
require-TITLE :
ifndef TITLE
	$(error Set TITLE)
endif
