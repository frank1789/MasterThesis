#!usr/bin/shell

TEX=pdflatex 
TEXFLAGS=-shell-escape -interaction=nonstopmode -file-line-error
BIBTEX=bibtex



THESIS         = masterthesis
PRINCIPALE_TEX     = $(PRINCIPALE).tex
PRINCIPALE_PDF     = $(PRINCIPALE).pdf
THESIS_TEX         = $(wildcard *.tex)
BIBLIOGRAFY        = $(wildcard *.bib) 

.DEFAULT: all 
.PHONY: clean

all: $(THESIS).pdf

$(THESIS).pdf: $(THESIS).bbl $(THESIS_TEX)
	$(TEX) $(TEXFLAGS) $(THESIS).tex -draftmode
	$(TEX) $(TEXFLAGS) $(THESIS).tex 

$(THESIS).bbl: $(THESIS).aux
	$(BIBTEX) $(THESIS).aux

$(THESIS).aux: $(BIBLIOGRAFY)
	$(TEX) $(TEXFLAGS) $(THESIS).tex -draftmode
	$(TEX) $(TEXFLAGS) $(THESIS).tex -draftmode


imgs/%.eps: imgs/%.pdf
	pdftops -eps $^ $@

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~