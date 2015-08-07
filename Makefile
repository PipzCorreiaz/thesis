
TEX=pdflatex
BIB=bibtex

FILENAME=thesis
TEXFILE=$(FILENAME).tex
PDFFILE=$(FILENAME).pdf

all:
	@mkdir -p out
	@echo "Building document..."
	@$(TEX) --output-directory=out $(TEXFILE) > /dev/null
	@echo "Generating bibliography..."
	@$(BIB) out/$(FILENAME) > /dev/null
	@echo "Setting things up..."
	@$(TEX) --output-directory=out $(TEXFILE) > /dev/null
	@$(TEX) --output-directory=out $(TEXFILE) > /dev/null
	@mv out/$(PDFFILE) .
	@echo "Done."

clean:
	@echo "Removing previous version..."
	@rm $(PDFFILE)
	@echo "Done."


