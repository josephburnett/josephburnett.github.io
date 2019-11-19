goals = serve
.DEFAULT_GOAL : serve
.PHONY : $(goals)

serve :
	jekyll serve
