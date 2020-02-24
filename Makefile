# LaTeX MakeFile 
MASTERFILE := $(wildcard masterthesis.tex)
THESISPDF  := $(patsubst %.tex, %.pdf, $(MASTERFILE))
THESISDOC := $(patsubst %.tex, %.docx, $(MASTERFILE))

CC    := /Library/TeX/texbin/latexmk
FLAGS := -pdf -interaction=nonstopmode -halt-on-error -shell-escape


# color definition
blue   := \033[0;34m
yellow := \033[0;33m
green  := \033[0;32m
end    := \033[0m

PHONY: clean \
		pdf \
		doc

all: clean pdf doc

pdf: $(THESISPDF)

doc: $(THESISDOC)

$(THESISPDF): $(MASTERFILE)
	@echo "${blue}---------------------------------${end}"
	@echo "${blue}========== compile pdf ==========${end}"
	@echo "${blue}---------------------------------${end}"
	@echo
	$(CC) $(FLAGS) $<
	@echo " ==> $(green) Complete $(end) $@"

$(THESISDOC): $(MASTERFILE)
	@echo "${blue} ==> produce document $@ from $< ${end}"
	pandoc $< -o $@

.PHONY: clean
clean:
	rm -f *. aux *. log *. out  *.docx *.bbl *.blg
