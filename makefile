components = 
imports = 
target = smutsig-geometri
pdfreader = see

default: main

main: main.tex $(components) $(imports)
	pdflatex $<
	pdflatex $<
	pdflatex $<
	mv $@.pdf $(target).pdf
	make clean
clean: 
	rm *.log
	rm *.aux

open:
	$(pdfreader) $(target).pdf &
