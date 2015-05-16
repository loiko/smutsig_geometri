# components = 
# imports = 
# target = smutsig-geometri

LATEX_FLAGS := --shell-escape
LATEX := pdflatex $(LATEX_FLAGS)

ALL_TEX_STUFF := $(wildcard *.tex) $(wildcard *.sty)

PDFS := kompendium.pdf barycentric_probs.pdf inversion_probs.pdf projective_probs.pdf poster.pdf

default: kompendium.pdf 
	echo $(ALL_TEX_STUFF)

%.pdf: %.tex $(ALL_TEX_STUFF)
	$(LATEX) $<
	$(LATEX) $<
	$(LATEX) $<

clean: 
	rm -f *.log *~ *.aux *.out *.toc *pyg

real_clean: clean
	rm -f *pdf