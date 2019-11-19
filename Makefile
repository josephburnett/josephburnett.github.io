goals = serve
.DEFAULT_GOAL : serve
.PHONY : $(goals)

serve :
	jekyll serve

.ONESHELL:
post :
ifndef TITLE
	$(error Set TITLE)
else
	TITLE=$(TITLE)
	URL_TITLE=$(shell echo $(TITLE) | tr A-Z a-z)
	ICON=$(shell echo $(TITLE) | head -c 1 | tr a-z A-Z)
	DATE=$(shell date '+%Y-%m-%d')
	FILE=weblog/_posts/$$DATE-$$URL_TITLE.md
	cat weblog/_template \
	| sed "s/TITLE/$$TITLE/" \
	| sed "s/ICON/$$ICON/" \
	>> $$FILE
	emacs $$FILE
endif
