# Makefile for LaTeX resume compilation
# Requires: texlive-base, texlive-latex-recommended, texlive-latex-extra, texlive-extra-utils

TEX_FILES = dph_2021.tex dph_resume_2021.tex
PDF_FILES = $(TEX_FILES:.tex=.pdf)
LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error

.PHONY: all clean

all: $(PDF_FILES)

%.pdf: %.tex
	$(LATEX) $(LATEX_FLAGS) $<
	$(LATEX) $(LATEX_FLAGS) $<

clean:
	rm -f *.aux *.log *.out *.synctex.gz *.fls *.fdb_latexmk
