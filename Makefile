NAME = contour-composition
TEXSRCS = body-en.tex bibliography.tex abstract.tex

OTHER += $(LILY_PDF) $(SVG_PDF)

USE_PDFLATEX = 1

LATEXMK-FILE = /usr/share/latex-mk/latex.gmk
GENOS_LATEX = /home/marcos/repositorios/genos-repos/lib/make/latex.mk

# LATEX_ENV+= BIBINPUTS=~/lib/bib/:~/profissional/genos/genos-repos/bib//:$(BIBINPUTS):
# LATEX_ENV+= BSTINPUTS=~/lib/latex/bib/:bib:$(BSTINPUTS):
# LATEX_ENV+= TEXINPUTS=~/lib/latex//:~/repositorios/genos-repos/lib/latex/:lily:figs:data:out:src:config:$(TEXINPUTS):

include $(LATEXMK-FILE)
include $(GENOS_LATEX)
